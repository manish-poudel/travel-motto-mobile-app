part of 'travel_game_types_bloc.dart';

@freezed
class TravelGameTypesEvent with _$TravelGameTypesEvent {
  const factory TravelGameTypesEvent.started() = _Started;
}