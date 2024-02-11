import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:travel_motto/models/location_notes/location_notes.dart';
import 'package:travel_motto/models/travel_location/travel_location.dart';
import 'package:travel_motto/repositories/location_notes_repository.dart';
import 'package:travel_motto/repositories/location_repository.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';

part 'trash_note_event.dart';
part 'trash_note_state.dart';
part 'trash_note_bloc.freezed.dart';

class TrashNoteBloc extends Bloc<TrashNoteEvent, TrashNoteState> {
  LocationRepository locationRepository;
  LocationNotesRepository locationNotesRepository;
  LocationNotes locationNotes;
  TrashNoteBloc(
      {required this.locationNotes,
      required this.locationRepository,
      required this.locationNotesRepository})
      : super(const _Initial()) {
    on<TrashNoteEvent>((event, emit) async {
      await event.when(
          started: () async => await _onEventStarted(emit),
          trashNote: () async => await _onTrashNote(emit),
          cancelTrashRequest: () async => await _onCancelTrashRequest(emit),
          requestTrash: () async => await _onRequestTrash(emit));
    });
  }

  _onEventStarted(Emitter<TrashNoteState> emit) async {
    try {
      TravelLocation? location = await locationRepository.getCurrentLocation();
      if (location == null) {
        return emit(const TrashNoteState.failed(
            message: "You have not enabled your location!"));
      }

      // if location is mocked, emit failed state
      if (location.position.isMocked) {
        return emit(const TrashNoteState.failed(
            message: "You have mocked your location!"));
      }

      if (locationNotes.authorId == TravellerProfileRepository.profile.id) {
        // if it has already been requested for trash
        if (locationNotes.state == "trash_requested") {
          return emit(const TrashNoteState.trashRequested());
        }
        // calculate distance between notes and user location,
        double distance = Geolocator.distanceBetween(location.position.latitude,
            location.position.longitude, locationNotes.lat, locationNotes.lng);

        // if its greater than 108, then user can only request for trash
        if (distance > 108) {
          return emit(
              TrashNoteState.requestForTrash(missedDistance: distance - 108));
        } else {
          // user can delete it
          return emit(const TrashNoteState.allowTrash(isByAuthor: true));
        }
      } else {
        if (locationNotes.state == "trash_requested") {
          // user can delete it
          return emit(const TrashNoteState.allowTrash(isByAuthor: false));
        }
        return emit(const TrashNoteState.failed(
            message: "Unable to process the request"));
      }
    } catch (err) {
      return emit(const TrashNoteState.failed(message: "Something went wrong"));
    }
  }

  _onTrashNote(Emitter<TrashNoteState> emit) async {
    try {
      emit((state as _AllowTrash)
          .copyWith(requestState: TrashNoteRequestProcess.loading));

      await Future.delayed(const Duration(seconds: 2));
      locationNotesRepository.trashLocationNotes(locationNotes: locationNotes);
      //todo: call api to delete note on server
      emit((state as _AllowTrash)
          .copyWith(requestState: TrashNoteRequestProcess.success));
    } catch (err) {
      emit((state as _AllowTrash)
          .copyWith(requestState: TrashNoteRequestProcess.failed));
    }
  }

  _onCancelTrashRequest(Emitter<TrashNoteState> emit) async {
    try {
      emit((state as _TrashRequested)
          .copyWith(requestState: TrashNoteRequestProcess.loading));
      await Future.delayed(const Duration(seconds: 2));
      await locationNotesRepository.updateLocationNotes(
          updatedLocationNotes: locationNotes.copyWith(state: "active"));
      emit((state as _TrashRequested)
          .copyWith(requestState: TrashNoteRequestProcess.success));
    } catch (err) {
      emit((state as _TrashRequested)
          .copyWith(requestState: TrashNoteRequestProcess.failed));
    }
  }

  _onRequestTrash(Emitter<TrashNoteState> emit) async {
    try {
      emit((state as _RequestForTrash)
          .copyWith(requestState: TrashNoteRequestProcess.loading));
      await Future.delayed(const Duration(seconds: 2));
      await locationNotesRepository.updateLocationNotes(
          updatedLocationNotes:
              locationNotes.copyWith(state: "trash_requested"));
      emit((state as _RequestForTrash)
          .copyWith(requestState: TrashNoteRequestProcess.success));
    } catch (err) {
      emit((state as _RequestForTrash)
          .copyWith(requestState: TrashNoteRequestProcess.failed));
    }
  }
}
