part of 'travel_game_types_bloc.dart';

@freezed
class TravelGameTypesState with _$TravelGameTypesState {
  const factory TravelGameTypesState.initial() = _Initial;
  const factory TravelGameTypesState.ready(
      {required List<TravelGameType> travelGameTypes}) = _Ready;
  const factory TravelGameTypesState.error() = _Error;
}
