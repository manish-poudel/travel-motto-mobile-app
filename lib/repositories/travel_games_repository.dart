import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_motto/models/travel_game/travel_game.dart';

class TravelGamesRepository {
  final reference = FirebaseFirestore.instance
      .collection("travel_games")
      .withConverter<TravelGame>(
        fromFirestore: (snapshots, _) => TravelGame.fromJson(snapshots.data()!),
        toFirestore: (travelGame, _) => travelGame.toJson(),
      );

  Future<QuerySnapshot<TravelGame>> getTravelGames() {
    return reference.get();
  }
}
