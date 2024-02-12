part of 'travel_game_organiser_bloc.dart';

@freezed
class TravelGameOrganiserState with _$TravelGameOrganiserState {
  const factory TravelGameOrganiserState.initial() = _Initial;
  const factory TravelGameOrganiserState.ready(
      {required List<TravelGameOrganiser> travelGameOrganisers}) = _Ready;
  const factory TravelGameOrganiserState.error() = _Error;
}
