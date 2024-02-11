part of 'create_travel_bloc.dart';

@freezed
class CreateTravelEvent with _$CreateTravelEvent {
  const factory CreateTravelEvent.started() = _Started;
  const factory CreateTravelEvent.addCheckList() = _AddCheckList;
  const factory CreateTravelEvent.removeCheckList({required int index}) =
      _RemoveCheckList;
  const factory CreateTravelEvent.updateTravelDate({required DateTime date}) =
      _UpdateTravelDate;
  const factory CreateTravelEvent.save() = _Save;
}
