import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_motto/models/travel_game/travel_game.dart';
import 'package:travel_motto/models/travel_game_organiser.dart/travel_game_organiser.dart';
import 'package:travel_motto/models/travel_game_type/travel_game_type.dart';

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

  Future<QuerySnapshot<TravelGameType>> getTravelGameTypes(String organiserId) {
    final travelGameTypesReference = FirebaseFirestore.instance
        .collection("travel_game_organisers")
        .doc(organiserId)
        .collection("game_types")
        .withConverter<TravelGameType>(
          fromFirestore: (snapshots, _) =>
              TravelGameType.fromJson(snapshots.data()!),
          toFirestore: (travelGameType, _) => travelGameType.toJson(),
        );

    return travelGameTypesReference
        .orderBy('updatedAt', descending: false)
        .get();
  }
}
