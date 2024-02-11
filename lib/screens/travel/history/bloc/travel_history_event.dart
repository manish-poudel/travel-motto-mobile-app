part of 'travel_history_bloc.dart';

@freezed
class TravelHistoryEvent with _$TravelHistoryEvent {
  const factory TravelHistoryEvent.started() = _Started;
}