import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/location_notes/location_notes.dart';
import 'package:travel_motto/repositories/location_notes_repository.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';

part 'notes_reader_event.dart';
part 'notes_reader_state.dart';
part 'notes_reader_bloc.freezed.dart';

class NotesReaderBloc extends Bloc<NotesReaderEvent, NotesReaderState> {
  final LocationNotes locationNotes;
  final LocationNotesRepository locationNotesRepository;
  NotesReaderBloc(
      {required this.locationNotes, required this.locationNotesRepository})
      : super(_Ready(locationNotes: locationNotes)) {
    on<NotesReaderEvent>((event, emit) {
      event.when(
          closeScreen: () => emit(const NotesReaderState.close()),
          rebuild: (newLocationNotes) =>
              emit(NotesReaderState.ready(locationNotes: newLocationNotes)),
          started: () async => await _onEventStarted(emit));
    });
  }

  _onEventStarted(Emitter<NotesReaderState> emit) async {
    if (locationNotes.authorId != TravellerProfileRepository.profile.id) {
      int views = (state as _Ready).locationNotes.views ?? 0;
      await locationNotesRepository.updateLocationNoteViewCount(
          viewerId: TravellerProfileRepository.profile.id,
          updatedLocationNotes:
              (state as _Ready).locationNotes.copyWith(views: views + 1));
    }
  }
}
