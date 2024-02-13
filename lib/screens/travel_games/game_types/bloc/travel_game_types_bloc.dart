import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/travel_game_organiser.dart/travel_game_organiser.dart';
import 'package:travel_motto/models/travel_game_type/travel_game_type.dart';
import 'package:travel_motto/repositories/travel_games_repository.dart';
import 'package:travel_motto/utils/debug_print.dart';

part 'travel_game_types_event.dart';
part 'travel_game_types_state.dart';
part 'travel_game_types_bloc.freezed.dart';

class TravelGameTypesBloc
    extends Bloc<TravelGameTypesEvent, TravelGameTypesState> {
  final TravelGamesRepository travelGamesRepository;
  final TravelGameOrganiser travelGameOrganiser;
  TravelGameTypesBloc(
      {required this.travelGameOrganiser, required this.travelGamesRepository})
      : super(const _Initial()) {
    on<TravelGameTypesEvent>((event, emit) async {
      await event.when(started: () async => await _onEventStarted(emit));
    });
  }

  _onEventStarted(Emitter<TravelGameTypesState> emit) async {
    try {
      List<TravelGameType> travelGameTypes = [];
      await travelGamesRepository
          .getTravelGameTypes(travelGameOrganiser.id)
          .then((value) {
        for (var element in value.docs) {
          travelGameTypes.add(element.data());
        }
        emit(TravelGameTypesState.ready(travelGameTypes: travelGameTypes));
      }).catchError((err) {
        debugPrint(err);
        emit(const TravelGameTypesState.error());
      });
    } catch (err) {
      emit(const TravelGameTypesState.error());
    }
  }
}
