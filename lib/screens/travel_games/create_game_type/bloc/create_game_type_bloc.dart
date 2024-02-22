import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/travel_game_tips/travel_game_tips.dart';
import 'package:travel_motto/repositories/travel_games_repository.dart';
import 'package:travel_motto/utils/debug_print.dart';

part 'create_game_type_event.dart';
part 'create_game_type_state.dart';
part 'create_game_type_bloc.freezed.dart';

class CreateGameTypeBloc
    extends Bloc<CreateGameTypeEvent, CreateGameTypeState> {
  final TravelGamesRepository travelGamesRepository;
  CreateGameTypeBloc({required this.travelGamesRepository})
      : super(const _Initial()) {
    on<CreateGameTypeEvent>((event, emit) async {
      await event.when(
          started: () async => await _onEventStarted(emit),
          closeTips: () {
            emit((state as _Ready).copyWith(showTips: false));
          },
          showTips: () async => await _onShowTips(emit));
    });
  }

  _onEventStarted(Emitter<CreateGameTypeState> emit) async {
    try {
      emit(const CreateGameTypeState.ready());
      await _loadTips(emit);
    } catch (err) {
      debugPrint(err.toString());
    }
  }

  _loadTips(Emitter<CreateGameTypeState> emit) async {
    await travelGamesRepository.getTravelGameOrganizeTips().then((value) {
      if (value.docs.isNotEmpty) {
        emit((state as _Ready)
            .copyWith(showTips: true, travelGameTips: value.docs[0].data()));
      }
    }).catchError((err) {
      debugPrint(err.toString());
    });
  }

  _onShowTips(Emitter<CreateGameTypeState> emit) async {
    try {
      emit(const CreateGameTypeState.ready());
      if ((state as _Ready).travelGameTips != null) {
        return emit((state as _Ready).copyWith(showTips: true));
      }
      await _loadTips(emit);
    } catch (err) {
      debugPrint(err.toString());
    }
  }
}
