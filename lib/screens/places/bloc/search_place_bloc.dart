import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/open_street_location/os_location.dart';
import 'package:travel_motto/repositories/os_map_repository.dart';

part 'search_place_event.dart';
part 'search_place_state.dart';
part 'search_place_bloc.freezed.dart';

class SearchPlaceBloc extends Bloc<SearchPlaceEvent, SearchPlaceState> {
  final String query;
  final OSMapRepository osMapRepository;
  SearchPlaceBloc({required this.query, required this.osMapRepository})
      : super(const _Initial()) {
    on<SearchPlaceEvent>((event, emit) async {
      await event.when(
          started: () async => await _onEventStarted(emit),
          select: (OSLocation osLocation) => _onSelect(emit, osLocation));
    });
  }

  _onEventStarted(emit) async {
    try {
      List<OSLocation> osLocations =
          await osMapRepository.getLocationFromQuery(locationQuery: query);
      emit(SearchPlaceState.ready(
          osLocations: osLocations,
          selectedOSLocation: OSLocation(displayName: query)));
    } catch (err) {
      emit(const SearchPlaceState.error(
          message: "Something went wrong.Try again"));
    }
  }

  _onSelect(Emitter<SearchPlaceState> emit, OSLocation osLocation) {
    emit((state as _Ready).copyWith(selectedOSLocation: osLocation));
  }
}
