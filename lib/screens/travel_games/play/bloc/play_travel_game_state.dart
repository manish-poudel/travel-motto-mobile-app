part of 'play_travel_game_bloc.dart';

@freezed
class PlayTravelGameState with _$PlayTravelGameState {
  const factory PlayTravelGameState.initial() = _Initial;
  const factory PlayTravelGameState.ready(
      {required bool allowPlay,
      required int distanceFromLocation,
      required TravelGame travelGame}) = _Ready;
  const factory PlayTravelGameState.failed({required String message}) = _Failed;
}
