part of 'travel_games_bloc.dart';

@freezed
class TravelGamesState with _$TravelGamesState {
  const factory TravelGamesState.initial() = _Initial;
  const factory TravelGamesState.ready(
      {required List<TravelGame> travelGames}) = _Ready;
  const factory TravelGamesState.failed({required String message}) = _Failed;
}
