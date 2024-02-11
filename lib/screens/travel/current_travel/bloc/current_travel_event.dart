part of 'current_travel_bloc.dart';

@freezed
class CurrentTravelEvent with _$CurrentTravelEvent {
  const factory CurrentTravelEvent.started() = _Started;
  const factory CurrentTravelEvent.delete() = _Delete;
  const factory CurrentTravelEvent.startTravel() = _StartTravel;
  const factory CurrentTravelEvent.completeTravel() = _CompleteTravel;
  const factory CurrentTravelEvent.syncTravel() = _SyncTravel;
  const factory CurrentTravelEvent.toggleCheckList(
      {required int index, required bool checked}) = _ToggleCheckList;
}
