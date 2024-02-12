import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_motto/models/travel_game/travel_game.dart';
import 'package:travel_motto/models/travel_game_organiser.dart/travel_game_organiser.dart';

class TravelGamesRepository {
  final reference = FirebaseFirestore.instance
      .collection("travel_games")
      .withConverter<TravelGame>(
        fromFirestore: (snapshots, _) => TravelGame.fromJson(snapshots.data()!),
        toFirestore: (travelGame, _) => travelGame.toJson(),
      );

  final travelGameOrganiserReference = FirebaseFirestore.instance
      .collection("travel_game_organisers")
      .withConverter<TravelGameOrganiser>(
        fromFirestore: (snapshots, _) =>
            TravelGameOrganiser.fromJson(snapshots.data()!),
        toFirestore: (travelGameOrganiser, _) => travelGameOrganiser.toJson(),
      );

  Future<QuerySnapshot<TravelGame>> getTravelGames(String organiserId) {
    return reference
        .orderBy('createdAt', descending: false)
        .where("organiserId", isEqualTo: organiserId)
        .get();
  }

  Future<QuerySnapshot<TravelGameOrganiser>> getTravelGameOrganisers() {
    return travelGameOrganiserReference.get();
  }
}
