part of 'home_screen_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.idle() = _Idle;
  const factory LocationState.fetching() = _Fetching;
  const factory LocationState.fetched({required TravelLocation data}) =
      _Fetched;
  const factory LocationState.failed({required String message}) = _Failed;
}

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.initial() = _Initial;
  const factory HomeScreenState.locationDisabled() = _LocationDisabled;
  const factory HomeScreenState.ready({
    @Default([]) List<TravelGameType> travelGameType,
    @Default(LocationState.idle()) LocationState locationState,
  }) = _Ready;
  const factory HomeScreenState.error({required String message}) = _Error;
}
