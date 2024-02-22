part of 'create_game_type_bloc.dart';

@freezed
class CreateGameTypeEvent with _$CreateGameTypeEvent {
  const factory CreateGameTypeEvent.started() = _Started;
  const factory CreateGameTypeEvent.closeTips() = _CloseTips;
  const factory CreateGameTypeEvent.showTips() = _ShowTips;
}
