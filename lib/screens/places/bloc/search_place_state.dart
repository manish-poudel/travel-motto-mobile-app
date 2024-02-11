part of 'search_place_bloc.dart';

@freezed
class SearchPlaceState with _$SearchPlaceState {
  const factory SearchPlaceState.initial() = _Initial;
  const factory SearchPlaceState.ready(
      {required List<OSLocation> osLocations,
      OSLocation? selectedOSLocation}) = _Ready;
  const factory SearchPlaceState.error({required String message}) = _Error;
}
