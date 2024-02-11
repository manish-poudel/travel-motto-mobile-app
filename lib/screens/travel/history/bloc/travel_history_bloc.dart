import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/travel/travel.dart';
import 'package:travel_motto/repositories/travels_repository.dart';

part 'travel_history_event.dart';
part 'travel_history_state.dart';
part 'travel_history_bloc.freezed.dart';

class TravelHistoryBloc extends Bloc<TravelHistoryEvent, TravelHistoryState> {
  final TravelsRepository travelsRepository;
  TravelHistoryBloc({required this.travelsRepository})
      : super(const _Initial()) {
    on<TravelHistoryEvent>((event, emit) async {
      await event.when(started: () async => await _onEventStarted(emit));
    });
  }

  _onEventStarted(Emitter<TravelHistoryState> emit) async {
    try {
      List<Travel> travels = [];
      await travelsRepository.getCompletedTravel().then((value) {
        for (var element in value.docs) {
          travels.add(element.data());
        }
        emit(TravelHistoryState.ready(travels: travels));
      }).catchError((err) {
        emit(const TravelHistoryState.failed(
            message: "Something went wrong.Try again!"));
      });
    } catch (err) {
      emit(const TravelHistoryState.failed(
          message: "Something went wrong.Try again!"));
    }
  }
}
