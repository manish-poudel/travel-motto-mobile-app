import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_motto/models/travel_game/travel_game.dart';
import 'package:travel_motto/models/travel_game_organiser.dart/travel_game_organiser.dart';
import 'package:travel_motto/models/travel_game_player/travel_game_player.dart';
import 'package:travel_motto/models/travel_game_type/travel_game_type.dart';
import 'package:travel_motto/utils/debug_print.dart';

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

  Future<QuerySnapshot<TravelGamePlayer>> getTravelGamePlayer(
      {required String organiserId,
      required String gameId,
      required String playerId}) {
    return FirebaseFirestore.instance
        .collection("travel_game_organisers")
        .doc(organiserId)
        .collection('games')
        .doc(gameId)
        .collection("players")
        .withConverter<TravelGamePlayer>(
          fromFirestore: (snapshots, _) =>
              TravelGamePlayer.fromJson(snapshots.data()!),
          toFirestore: (travelGamePlayer, _) => travelGamePlayer.toJson(),
        )
        .get();
  }

  Future<bool> setTravelGamePlayer(
      {required TravelGame travelGame,
      required TravelGamePlayer travelGamePlayer}) {
    DocumentReference<TravelGamePlayer> playerDocRef = FirebaseFirestore
        .instance
        .collection("travel_game_organisers")
        .doc(travelGame.organiserId)
        .collection('games')
        .doc(travelGame.id)
        .collection("players")
        .doc(travelGamePlayer.id)
        .withConverter<TravelGamePlayer>(
          fromFirestore: (snapshots, _) =>
              TravelGamePlayer.fromJson(snapshots.data()!),
          toFirestore: (travelGamePlayer, _) => travelGamePlayer.toJson(),
        );

    return FirebaseFirestore.instance.runTransaction((transaction) {
      return transaction.get(playerDocRef).then((playerDoc) {
        // player doc exists
        if (playerDoc.exists) {
          // if its already completed no need to do anything
          if (playerDoc.data()?.completed != true &&
              travelGamePlayer.completed) {
            transaction.update(playerDocRef, travelGamePlayer.toJson());
            return true;
          }
          debugPrint(
              "Player has already completed this task.. no need to write");
          return false;
        } else {
          transaction.set(playerDocRef, travelGamePlayer);
          return true;
        }
      });
    });
  }
}
