part of 'travel_history_bloc.dart';

@freezed
class TravelHistoryState with _$TravelHistoryState {
  const factory TravelHistoryState.initial() = _Initial;
  const factory TravelHistoryState.ready({required List<Travel> travels}) =
      _Ready;
  const factory TravelHistoryState.failed({required String message}) = _Failed;
}
