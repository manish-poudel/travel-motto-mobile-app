part of 'search_place_bloc.dart';

@freezed
class SearchPlaceEvent with _$SearchPlaceEvent {
  const factory SearchPlaceEvent.started() = _Started;
  const factory SearchPlaceEvent.select({required OSLocation osLocation}) =
      _Select;
}
