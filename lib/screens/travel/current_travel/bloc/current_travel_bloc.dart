import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/current_travel.dart/current_travel.dart';
import 'package:travel_motto/models/server/delete_state.dart';
import 'package:travel_motto/models/server/save_state.dart';
import 'package:travel_motto/models/travel/travel.dart';
import 'package:travel_motto/models/travel_cache/travel_cache.dart';
import 'package:travel_motto/models/travel_location/travel_location.dart';
import 'package:travel_motto/repositories/current_travel_repository.dart';
import 'package:travel_motto/repositories/location_repository.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/repositories/travels_repository.dart';
import 'package:travel_motto/utils/debug_print.dart';

part 'current_travel_event.dart';
part 'current_travel_state.dart';
part 'current_travel_bloc.freezed.dart';

class CurrentTravelBloc extends Bloc<CurrentTravelEvent, CurrentTravelState> {
  final CurrentTravel currentTravel;
  final CurrentTravelRepository currentTravelRepository;
  final TravelsRepository travelsRepository;
  final LocationRepository locationRepository;
  CurrentTravelBloc(
      {required this.currentTravel,
      required this.currentTravelRepository,
      required this.locationRepository,
      required this.travelsRepository})
      : super(const _Initial()) {
    on<CurrentTravelEvent>((event, emit) async {
      await event.when(
          started: () => _onEventStarted(emit),
          delete: () async => await _onDelete(emit),
          startTravel: () async => await _onStartTravel(emit),
          completeTravel: () async => await _onCompleteTravel(emit),
          toggleCheckList: (int index, bool checked) =>
              _onToggleCheckList(index, checked, emit),
          syncTravel: () => _onSyncTravel(emit));
    });
  }

  _onEventStarted(Emitter<CurrentTravelState> emit) {
    emit(CurrentTravelState.ready(currentTravel: currentTravel));
  }

  _onDelete(Emitter<CurrentTravelState> emit) async {
    try {
      emit((state as _Ready)
          .copyWith(deleteState: const DeleteState.deleting()));
      if ((state as _Ready).currentTravel.travel.status == "completed") {
        debugPrint("Deleting cached complete travel only...");
        await travelsRepository.deleteCachedCurrentTravel();
        emit((state as _Ready)
            .copyWith(deleteState: const DeleteState.deleted()));
        return;
      }
      debugPrint("Deleting it from server and cache..");
      await travelsRepository
          .deleteCurrentTravel(id: currentTravel.travel.id)
          .then((value) {
        currentTravelRepository.removeCurrentTravel();
        emit((state as _Ready)
            .copyWith(deleteState: const DeleteState.deleted()));
      }).catchError((err) {
        emit((state as _Ready).copyWith(
            deleteState: DeleteState.failed(message: err.toString())));
      });
    } catch (err) {
      emit((state as _Ready)
          .copyWith(deleteState: DeleteState.failed(message: err.toString())));
    }
  }

  _onStartTravel(Emitter<CurrentTravelState> emit) async {
    try {
      emit((state as _Ready).copyWith(saveState: const SaveState.saving()));
      TravelLocation? currentLocation =
          await locationRepository.getCurrentLocation(refresh: true);
      if (currentLocation == null) {
        return emit((state as _Ready).copyWith(
            saveState: const SaveState.failed(
                message: "Please enable your location to start this travel")));
      }
      Travel updatedTravel = currentTravel.travel.copyWith(
          status: "started",
          startedPos: [
            currentLocation.position.latitude,
            currentLocation.position.longitude
          ]);
      await travelsRepository
          .updateCurrentTravel(travel: updatedTravel)
          .then((value) {
        CurrentTravel updatedCurrentTravel =
            currentTravel.copyWith(travel: updatedTravel);
        emit((state as _Ready).copyWith(
            currentTravel: updatedCurrentTravel,
            saveState: const SaveState.saved()));
        currentTravelRepository.updateCurrentTravel(updatedCurrentTravel);
      }).catchError((err) {
        emit((state as _Ready)
            .copyWith(saveState: SaveState.failed(message: err.toString())));
      });
    } catch (err) {
      emit((state as _Ready)
          .copyWith(saveState: SaveState.failed(message: err.toString())));
    }
  }

  _onCompleteTravel(Emitter<CurrentTravelState> emit) async {
    try {
      emit((state as _Ready).copyWith(saveState: const SaveState.saving()));
      TravelLocation? currentLocation =
          await locationRepository.getCurrentLocation(refresh: true);
      if (currentLocation == null) {
        return emit((state as _Ready).copyWith(
            saveState: const SaveState.failed(
                message: "Please enable your location to start this travel")));
      }
      Travel updatedTravel = currentTravel.travel.copyWith(
          status: "completed",
          endDate: DateTime.now(),
          completedPos: [
            currentLocation.position.latitude,
            currentLocation.position.longitude
          ]);
      await travelsRepository
          .completeCurrentTravel(travel: updatedTravel)
          .then((value) {
        CurrentTravel updatedCurrentTravel =
            currentTravel.copyWith(travel: updatedTravel);
        emit((state as _Ready).copyWith(
            currentTravel: updatedCurrentTravel,
            saveState: const SaveState.saved()));
        currentTravelRepository.removeCurrentTravel();
      }).catchError((err) {
        emit((state as _Ready)
            .copyWith(saveState: SaveState.failed(message: err.toString())));
      });
    } catch (err) {
      emit((state as _Ready)
          .copyWith(saveState: SaveState.failed(message: err.toString())));
    }
  }

  _onToggleCheckList(
      int index, bool checked, Emitter<CurrentTravelState> emit) {
    try {
      String newStatus = checked ? "checked" : "unchecked";
      List<CheckList>? checkLists = [];
      checkLists.addAll((state as _Ready).currentTravel.travel.checkList!);
      checkLists[index] = checkLists[index].copyWith(status: newStatus);
      Travel updatedTravel = (state as _Ready)
          .currentTravel
          .travel
          .copyWith(checkList: checkLists);
      CurrentTravel updatedCurrentTravel = (state as _Ready)
          .currentTravel
          .copyWith(
              travel: updatedTravel,
              completedCheckList: updatedTravel.checkList
                  ?.where((element) => element.status == "checked")
                  .length);
      travelsRepository.cacheCurrentTravel(
          travelCache: TravelCache(
              travellerId: TravellerProfileRepository.profile.id,
              status: "unsynced",
              travel: updatedCurrentTravel.travel));
      currentTravelRepository.updateCurrentTravel(updatedCurrentTravel);
      emit((state as _Ready).copyWith(currentTravel: updatedCurrentTravel));
    } catch (err) {
      debugPrint(err.toString());
    }
  }

  _onSyncTravel(Emitter<CurrentTravelState> emit) {
    if (currentTravel != (state as _Ready).currentTravel) {
      travelsRepository.syncCurrentTravel(
          travel: (state as _Ready).currentTravel.travel);
    }
  }
}
