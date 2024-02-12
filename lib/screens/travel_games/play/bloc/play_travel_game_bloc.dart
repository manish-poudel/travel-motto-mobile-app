import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:travel_motto/models/travel_game/travel_game.dart';
import 'package:travel_motto/models/travel_location/travel_location.dart';
import 'package:travel_motto/repositories/location_repository.dart';

part 'play_travel_game_event.dart';
part 'play_travel_game_state.dart';
part 'play_travel_game_bloc.freezed.dart';

class PlayTravelGameBloc
    extends Bloc<PlayTravelGameEvent, PlayTravelGameState> {
  final TravelGame travelGame;
  final LocationRepository locationRepository;

  PlayTravelGameBloc({
    required this.locationRepository,
    required this.travelGame,
  }) : super(const _Initial()) {
    on<PlayTravelGameEvent>((event, emit) async {
      await event.whenOrNull(started: () async => await _onEventStarted(emit));
    });
  }

  _onEventStarted(Emitter<PlayTravelGameState> emit) async {
    try {
      TravelLocation? travelLocation =
          await locationRepository.getCurrentLocation(refresh: true);
      if (travelLocation == null) {
        return emit(const PlayTravelGameState.failed(
            message: "Something went wrong.Try again"));
      }
      final distanceBetweenLocationAndUser = Geolocator.distanceBetween(
          travelLocation.position.latitude,
          travelLocation.position.longitude,
          travelGame.location.first,
          travelGame.location.last);

      // if user is within the allow radius
      bool allowPlay = distanceBetweenLocationAndUser <= travelGame.allowRadius;

      emit(PlayTravelGameState.ready(
          allowPlay: allowPlay,
          distanceFromLocation: distanceBetweenLocationAndUser.round(),
          travelGame: travelGame));
    } catch (err) {
      return emit(const PlayTravelGameState.failed(
          message: "Something went wrong.Try again"));
    }
  }
}
