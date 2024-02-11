part of 'current_travel_bloc.dart';

@freezed
class CurrentTravelState with _$CurrentTravelState {
  const factory CurrentTravelState.initial() = _Initial;
  const factory CurrentTravelState.ready({
    required CurrentTravel currentTravel,
    @Default(DeleteState.idle()) DeleteState deleteState,
    @Default(SaveState.idle()) SaveState saveState,
  }) = _Ready;
  const factory CurrentTravelState.error({required String error}) = _Error;
}
