import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/travel_game_organiser.dart/travel_game_organiser.dart';
import 'package:travel_motto/repositories/travel_games_repository.dart';
import 'package:travel_motto/utils/debug_print.dart';

part 'travel_game_organiser_event.dart';
part 'travel_game_organiser_state.dart';
part 'travel_game_organiser_bloc.freezed.dart';

class TravelGameOrganiserBloc
    extends Bloc<TravelGameOrganiserEvent, TravelGameOrganiserState> {
  final TravelGamesRepository travelGamesRepository;
  TravelGameOrganiserBloc({required this.travelGamesRepository})
      : super(const _Initial()) {
    on<TravelGameOrganiserEvent>((event, emit) async {
      await event.when(started: () async => await _onEventStarted(emit));
    });
  }

  _onEventStarted(Emitter<TravelGameOrganiserState> emit) async {
    try {
      List<TravelGameOrganiser> travelGameOrganisers = [];
      await travelGamesRepository.getTravelGameOrganisers().then((value) {
        for (var element in value.docs) {
          travelGameOrganisers.add(element.data());
        }
        emit(TravelGameOrganiserState.ready(
            travelGameOrganisers: travelGameOrganisers));
      }).catchError((err) {
        debugPrint(err);
        emit(const TravelGameOrganiserState.error());
      });
    } catch (err) {
      emit(const TravelGameOrganiserState.error());
    }
  }
}
