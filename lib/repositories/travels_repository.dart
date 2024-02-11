import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_motto/models/travel/travel.dart';
import 'package:travel_motto/models/travel_cache/travel_cache.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/services/shared_preferences/shared_preferences_services.dart';

import '../utils/debug_print.dart';

class TravelsRepository {
  late final SharedPreferencesServices sharedPreferencesServices;
  final _currentTravelKey = "currentTravel";

  TravelsRepository({
    required this.sharedPreferencesServices,
  });
  final reference = FirebaseFirestore.instance
      .collection("travellers")
      .doc(TravellerProfileRepository.profile.id)
      .collection('travels')
      .withConverter<Travel>(
        fromFirestore: (snapshots, _) => Travel.fromJson(snapshots.data()!),
        toFirestore: (travel, _) => travel.toJson(),
      );

  // Generate firestore doc id
  generateFirestoreDocId() {
    return reference.doc().id;
  }

  /// Save current travel
  Future<void> saveCurrentTravel({required Travel travel}) {
    final batch = FirebaseFirestore.instance.batch();
    batch.set(reference.doc(travel.id), travel); // Set travel document
    batch.update(
        TravellerProfileRepository
            .getTravellerDocReference(), // Also update the current travel id on the user doc
        {"currentTravelId": travel.id});
    return batch.commit().then((value) => cacheCurrentTravel(
        travelCache: TravelCache(
            travellerId: TravellerProfileRepository.profile.id,
            status: "synced",
            travel: travel)));
  }

  /// Delete current travel
  Future<void> deleteCurrentTravel({required String id}) async {
    bool? cachedDeleted = await deleteCachedCurrentTravel();
    // First delete cached travel
    if (cachedDeleted == true) {
      debugPrint("Cached current travel has been deleted");
      final batch = FirebaseFirestore.instance.batch();
      batch.delete(reference.doc(id)); // Delete travel document
      batch.update(TravellerProfileRepository.getTravellerDocReference(),
          {"currentTravelId": FieldValue.delete()});
      return batch.commit();
    } else {
      throw ("Unable to delete cached travel");
    }
  }

  /// Save current travel
  Future<Travel?> getCurrentTravel() async {
    String? currentTravelId =
        TravellerProfileRepository.profile.currentTravelId;
    if (currentTravelId == null) {
      debugPrint("User doesn't have current travel. Returning null...");
      return null;
    }
    TravelCache? travelCache = await _getCachedCurrentTravel();
    if (travelCache != null &&
        travelCache.travel.id == currentTravelId &&
        travelCache.travellerId == TravellerProfileRepository.profile.id &&
        travelCache.travel.status != "completed") {
      /// travel id matches with current travel id we can return cached travel
      debugPrint(
          "Travel id and traveller id matches with the cached current travel. Returning it...");

      if (travelCache.status != "synced") {
        debugPrint("Travel was not synced to server. So syncing it...");
        updateCurrentTravel(travel: travelCache.travel); // sync current travel
      }
      return travelCache.travel;
    }
    debugPrint(
        "Travel id doesn't matches with the cached current travel. So, returning it from server...");

    return await reference.doc(currentTravelId).get().then((value) {
      Travel? travel = value.data();
      if (travel != null && travel.status != "completed") {
        debugPrint("Caching travel...");
        cacheCurrentTravel(
            travelCache: TravelCache(
                travellerId: TravellerProfileRepository.profile.id,
                status: "synced",
                travel: travel)); // cache it for future

        return travel;
      }
      return null;
    }).catchError((err) {
      throw (err);
    });
  }

  Future<void> updateCurrentTravel({required Travel travel}) {
    return _updateTravelInFirestore(travel: travel).then((value) =>
        cacheCurrentTravel(
            travelCache: TravelCache(
                travellerId: TravellerProfileRepository.profile.id,
                status: "synced",
                travel: travel)));
  }

  Future<void> syncCurrentTravel({required Travel travel}) async {
    debugPrint("About to sync current travel");
    TravelCache? travelCache = await _getCachedCurrentTravel();
    if (travelCache == null) {
      debugPrint("Travel cache is null..returning without syncing..");
    }
    if (travelCache?.status == "synced") {
      debugPrint("Travel cache is already synced..returning without syncing..");
    }
    debugPrint("Syncing now...");
    return updateCurrentTravel(travel: travel);
  }

  /// Delete current travel
  Future<void> completeCurrentTravel({required Travel travel}) async {
    bool? cachedDeleted = await deleteCachedCurrentTravel();
    // First delete cached travel
    if (cachedDeleted == true) {
      debugPrint("Cached current travel has been deleted");
      final batch = FirebaseFirestore.instance.batch();
      batch.update(
          reference.doc(travel.id), travel.toJson()); // Delete travel document
      batch.update(TravellerProfileRepository.getTravellerDocReference(),
          {"currentTravelId": FieldValue.delete()});
      return batch.commit();
    } else {
      throw ("Unable to delete cached travel");
    }
  }

  /// Update travel in firestore
  Future<void> _updateTravelInFirestore({required Travel travel}) {
    return reference.doc(travel.id).update(travel.toJson());
  }

  /// Cache travel
  cacheCurrentTravel({required TravelCache travelCache}) {
    sharedPreferencesServices.setString(
        key: _currentTravelKey, value: jsonEncode(travelCache.toJson()));
  }

  Future<QuerySnapshot<Travel>> getCompletedTravel({int limit = 10}) async {
    return await reference
        .where("status", isEqualTo: "completed")
        .orderBy('startDate', descending: true)
        .get();
  }

  /// Cache travel
  Future<TravelCache?> _getCachedCurrentTravel() async {
    String? travelString =
        await sharedPreferencesServices.getString(key: _currentTravelKey);
    if (travelString == null) return null;
    return TravelCache.fromJson(jsonDecode(travelString));
  }

  Future<bool?> deleteCachedCurrentTravel() async {
    return await sharedPreferencesServices.delete(key: _currentTravelKey);
  }
}
