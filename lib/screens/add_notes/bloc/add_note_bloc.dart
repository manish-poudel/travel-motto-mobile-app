import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/location_notes/location_notes.dart';
import 'package:travel_motto/models/travel_location/travel_location.dart';
import 'package:travel_motto/repositories/location_repository.dart';
import 'package:travel_motto/repositories/location_notes_repository.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';

part 'add_note_event.dart';
part 'add_note_state.dart';
part 'add_note_bloc.freezed.dart';

class AddNoteBloc extends Bloc<AddNoteEvent, AddNoteState> {
  final LocationRepository locationRepository;
  final LocationNotesRepository notesRepository;

  AddNoteBloc({required this.locationRepository, required this.notesRepository})
      : super(const _Initial()) {
    on<AddNoteEvent>((event, emit) async {
      await event.when(
          started: () async => await _onEventStarted(emit),
          save: (String title, String notes, TravelLocation locaiton) =>
              _onSaveNote(title, notes, locaiton, emit));
    });
  }

  _onEventStarted(Emitter<AddNoteState> emit) async {
    try {
      final travelLocation =
          await locationRepository.getCurrentLocation(refresh: true);
      if (travelLocation == null) {
        return emit(const AddNoteState.error(
            message: "Something went wrong.Try again"));
      }
      emit(AddNoteState.ready(travelLocation: travelLocation));
    } catch (err) {
      emit(const AddNoteState.error(message: "Something went wrong.Try again"));
    }
  }

  _onSaveNote(String title, String notes, TravelLocation location, emit) async {
    try {
      emit((state as _Ready)
          .copyWith(saveNoteState: const SaveNoteState.saving()));
      await notesRepository
          .saveLocationNotes(
              notes: LocationNotes(
                  authorId: TravellerProfileRepository.profile.id,
                  authorName:
                      "${TravellerProfileRepository.profile.firstName} ${TravellerProfileRepository.profile.lastName}",
                  title: title,
                  notes: notes,
                  lat: location.position.latitude,
                  lng: location.position.longitude,
                  state: "active",
                  fullAddress: location.getReadableLocation()))
          .then((value) {
        Map<String, dynamic> data = value.data;
        if (data.isEmpty) {
          return emit((state as _Ready).copyWith(
              saveNoteState: const SaveNoteState.failed(
                  message: "Unable to save note.Try again")));
        }
        emit((state as _Ready)
            .copyWith(saveNoteState: const SaveNoteState.saved()));
      }).catchError((err) {
        emit((state as _Ready).copyWith(
            saveNoteState: SaveNoteState.failed(message: err.toString())));
      });
    } catch (err) {
      emit((state as _Ready).copyWith(
          saveNoteState: SaveNoteState.failed(message: err.toString())));
    }
  }
}
