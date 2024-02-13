import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_motto/models/travel_game/travel_game.dart';
import 'package:travel_motto/models/travel_game_organiser.dart/travel_game_organiser.dart';
import 'package:travel_motto/models/travel_game_type/travel_game_type.dart';

class TravelGamesRepository {
  final travelGameOrganiserReference = FirebaseFirestore.instance
      .collection("travel_game_organisers")
      .withConverter<TravelGameOrganiser>(
        fromFirestore: (snapshots, _) =>
            TravelGameOrganiser.fromJson(snapshots.data()!),
        toFirestore: (travelGameOrganiser, _) => travelGameOrganiser.toJson(),
      );

  Future<QuerySnapshot<TravelGame>> getTravelGames(
      String organiserId, String gameTypeId) {
    final gamesReference = FirebaseFirestore.instance
        .collection("travel_game_organisers")
        .doc(organiserId)
        .collection('games')
        .withConverter<TravelGame>(
          fromFirestore: (snapshots, _) =>
              TravelGame.fromJson(snapshots.data()!),
          toFirestore: (travelGame, _) => travelGame.toJson(),
        );

    return gamesReference
        .orderBy('createdAt', descending: true)
        .where("gameTypeId", isEqualTo: gameTypeId)
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
