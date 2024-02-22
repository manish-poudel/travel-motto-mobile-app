part of 'create_game_type_bloc.dart';

@freezed
class CreateGameTypeState with _$CreateGameTypeState {
  const factory CreateGameTypeState.initial() = _Initial;
  const factory CreateGameTypeState.ready(
      {@Default(false) showTips, TravelGameTips? travelGameTips}) = _Ready;
}
