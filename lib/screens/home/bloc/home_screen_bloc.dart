import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/travel_location/travel_location.dart';
import 'package:travel_motto/repositories/current_travel_repository.dart';
import 'package:travel_motto/repositories/location_repository.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
// ignore: unused_import
import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  final LocationRepository locationRepository;
  final CurrentTravelRepository currentTravelRepository;
  final TravellerProfileRepository travellerProfileRepository;
  HomeScreenBloc(
      {required this.locationRepository,
      required this.currentTravelRepository,
      required this.travellerProfileRepository})
      : super(const _Initial()) {
    on<HomeScreenEvent>((event, emit) async {
      await event.when(
        started: () {
          _onEventStarted(emit);
        },
        getCurrentLocation: () async => await _getCurrentLocation(emit),
      );
    });
  }

  _onEventStarted(Emitter<HomeScreenState> emit) {
    try {
      emit(const HomeScreenState.ready());
      currentTravelRepository.streamCurrentTravel();
    } catch (err) {
      emit(const HomeScreenState.error(message: "Something went wrong"));
    }
  }

  _getCurrentLocation(Emitter<HomeScreenState> emit) async {
    try {
      emit((state as _Ready)
          .copyWith(locationState: const LocationState.fetching()));
      final travelLocation = await locationRepository.getCurrentLocation();
      if (travelLocation == null) {
        return emit(const HomeScreenState.error(
            message: "You have not enabled your position"));
      }

      if (travelLocation.position.isMocked) {
        emit(((state as _Ready).copyWith(
            locationState: const LocationState.failed(
                message: "You have mocked your location"))));
        emit(const HomeScreenState.error(
            message: "You have mocked your position"));
        return;
      }

      //  Getting your current travel data

      emit((state as _Ready).copyWith(
          locationState: LocationState.fetched(
        data: travelLocation,
      )));
    } catch (err) {
      emit(((state as _Ready).copyWith(
          locationState: const LocationState.failed(
              message: "Unable to get locations.."))));
    }
  }
}
