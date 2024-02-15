import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:travel_motto/models/travel_game/travel_game.dart';
import 'package:travel_motto/models/travel_game_player/travel_game_player.dart';
import 'package:travel_motto/models/travel_location/travel_location.dart';
import 'package:travel_motto/repositories/location_repository.dart';
import 'package:travel_motto/repositories/travel_games_repository.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/utils/debug_print.dart';

part 'play_travel_game_event.dart';
part 'play_travel_game_state.dart';
part 'play_travel_game_bloc.freezed.dart';

class PlayTravelGameBloc
    extends Bloc<PlayTravelGameEvent, PlayTravelGameState> {
  final TravelGame travelGame;
  final TravelGamesRepository travelGamesRepository;
  final LocationRepository locationRepository;
  bool? previousAnswer;

  PlayTravelGameBloc({
    required this.travelGamesRepository,
    required this.locationRepository,
    required this.travelGame,
  }) : super(const _Initial()) {
    on<PlayTravelGameEvent>((event, emit) async {
      await event.when(
          started: () async => await _onEventStarted(emit),
          logPlay: (correctAnswer) async =>
              await _onLogPlay(correctAnswer, emit));
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

  _onLogPlay(bool correctAnswer, Emitter<PlayTravelGameState> emit) async {
    try {
      if (previousAnswer == correctAnswer) {
        debugPrint("Same answer as before, no need to log...");
        return;
      } else {
        previousAnswer = correctAnswer;
        debugPrint("logging player...");
        await travelGamesRepository
            .setTravelGamePlayer(
                travelGame: travelGame,
                travelGamePlayer: TravelGamePlayer(
                    id: TravellerProfileRepository.profile.id,
                    name:
                        "${TravellerProfileRepository.profile.firstName} ${TravellerProfileRepository.profile.lastName}",
                    completed: correctAnswer,
                    lastPlayed: DateTime.now()))
            .then((value) {
          debugPrint("updated success: $value");
        }).catchError((err) {
          debugPrint("Error: $err");
          previousAnswer = null;
        });
      }
    } catch (err) {
      debugPrint(err.toString());
    }
  }
}
