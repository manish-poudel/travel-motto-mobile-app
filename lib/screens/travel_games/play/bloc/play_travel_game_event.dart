part of 'play_travel_game_bloc.dart';

@freezed
class PlayTravelGameEvent with _$PlayTravelGameEvent {
  const factory PlayTravelGameEvent.started() = _Started;
  const factory PlayTravelGameEvent.logPlay({required bool correctAnswer}) =
      _LogPlay;
}
