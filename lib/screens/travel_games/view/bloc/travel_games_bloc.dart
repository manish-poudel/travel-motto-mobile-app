import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/travel_game/travel_game.dart';
import 'package:travel_motto/repositories/travel_games_repository.dart';

part 'travel_games_event.dart';
part 'travel_games_state.dart';
part 'travel_games_bloc.freezed.dart';

class TravelGamesBloc extends Bloc<TravelGamesEvent, TravelGamesState> {
  final TravelGamesRepository travelGamesRepository;
  TravelGamesBloc({required this.travelGamesRepository})
      : super(const _Initial()) {
    on<TravelGamesEvent>((event, emit) async {
      await event.when(started: () async => await _onEventStarted(emit));
    });
  }

  _onEventStarted(Emitter<TravelGamesState> emit) async {
    try {
      List<TravelGame> travelGames = [
        // TravelGame(
        //     isOwner: true,
        //     author: "TravelMotto",
        //     allowRadius: 1000,
        //     fullAddress: "Basantapur, Kathmandu, Nepal",
        //     id: "1",
        //     location: [27.7042, 85.3065],
        //     question: "What is the number?",
        //     answer: "10",
        //     notes: "Near the heart of the valley, there is a kathmandu ",
        //     createdAt: DateTime.now(),
        //     photoUrl:
        //         "https://firebasestorage.googleapis.com/v0/b/travel-motto.appspot.com/o/travel_games%2F3QBCgeei1okAvKh0W4xP.jpg?alt=media&token=9ad9a489-ce35-4d2b-ab49-f7ecfa46cea7",
        //     lockedNotes: "Congratulations")
      ];

      //emit(TravelGamesState.ready(travelGames: travelGames));
      await travelGamesRepository.getTravelGames().then((value) {
        for (var element in value.docs) {
          travelGames.add(element.data());
        }
        emit(TravelGamesState.ready(travelGames: travelGames));
      }).catchError((err) {
        emit(const TravelGamesState.failed(
            message: "Something went wrong.Try again"));
      });
    } catch (err) {
      emit(const TravelGamesState.failed(
          message: "Something went wrong.Try again"));
    }
  }
}
