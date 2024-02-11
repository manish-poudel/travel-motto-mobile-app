import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/location_notes/location_notes.dart';
import 'package:travel_motto/models/travel_location/travel_location.dart';

import 'package:travel_motto/repositories/location_notes_repository.dart';
import 'package:travel_motto/repositories/location_repository.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/screens/scan_notes/models/enums.dart';

part 'scan_notes_event.dart';
part 'scan_notes_state.dart';
part 'scan_notes_bloc.freezed.dart';

class ScanNotesBloc extends Bloc<ScanNotesEvent, ScanNotesState> {
  LocationNotesRepository notesRepository;
  LocationRepository locationRepository;

  ScanNotesBloc(
      {required this.notesRepository, required this.locationRepository})
      : super(const _Initial()) {
    on<ScanNotesEvent>((event, emit) async {
      await event.when(
          started: (type) async => await _onEventStarted(type, emit),
          clear: () {
            notesRepository.cLearLocationNotes();
          });
    });
  }

  _onEventStarted(
      ScanLocationNotesType type, Emitter<ScanNotesState> emit) async {
    try {
      emit(ScanNotesState.ready(
          locationNotesStream: notesRepository.locationNotesStream));
      if (type == ScanLocationNotesType.private) {
        await notesRepository.streamMyLocationsNotes(
            userId: TravellerProfileRepository.profile.id);
      }
      if (type == ScanLocationNotesType.public) {
        TravelLocation? travelLocation =
            await locationRepository.getCurrentLocation(refresh: true);

        if (travelLocation == null) {
          return emit(const ScanNotesState.error(
              message: "You have not enable your location"));
        }
        await notesRepository.streamLocationNotesWithInProximity(data: {
          "lat": travelLocation.position.latitude,
          "lng": travelLocation.position.longitude
        });
      }
      if (type == ScanLocationNotesType.mock) {
        await notesRepository.streamMockLocationNotes();
      }
    } catch (err) {
      emit(const ScanNotesState.error(
          message: "Something went wrong.Try again"));
    }
  }
}
