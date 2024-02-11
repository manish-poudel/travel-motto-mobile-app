import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travel_motto/models/profile/traveller_profile.dart';

class TravellerProfileRepository {
  final reference = FirebaseFirestore.instance
      .collection("travellers")
      .withConverter<TravellerProfile>(
        fromFirestore: (snapshots, _) =>
            TravellerProfile.fromJson(snapshots.data()!),
        toFirestore: (profile, _) => profile.toJson(),
      );

  static late TravellerProfile profile;

  static DocumentReference getTravellerDocReference() {
    return FirebaseFirestore.instance.collection("travellers").doc(profile.id);
  }

  final StreamController<TravellerProfile> _travelProfileController =
      StreamController<TravellerProfile>.broadcast();
  Stream<TravellerProfile> get travellerProfileStream =>
      _travelProfileController.stream;

  Future<void> registerTraveller({required TravellerProfile profile}) {
    return reference.doc(profile.id).set(profile);
  }

  applyProfile(TravellerProfile travellerProfile) {
    profile = travellerProfile;
    streamProfile();
  }

  streamProfile() {
    _travelProfileController.sink.add(profile);
  }

  Future<void> updateProfile(TravellerProfile updatedTravellerProfile) {
    return reference
        .doc(updatedTravellerProfile.id)
        .update(updatedTravellerProfile.toJson())
        .then((value) {
      applyProfile(updatedTravellerProfile);
    });
  }

  /// Get profile of the user
  Future<bool> initProfile({required String uid}) async {
    DocumentSnapshot<TravellerProfile> documentSnapshot =
        await reference.doc(uid).get();
    if (documentSnapshot.exists) {
      profile = documentSnapshot.data()!;
      return true;
    }
    return false;
  }

  updateCurrentTravelId({required String id}) {
    profile = profile.copyWith(currentTravelId: id);
    streamProfile();
  }

  /// Get profile of the user
  Future<TravellerProfile> initMockProfile({required String uid}) async {
    await Future.delayed(const Duration(seconds: 2));
    profile = TravellerProfile(
        id: "XMTMfuOfxCaNIzM4iyOIDEbBRF73",
        firstName: "John",
        lastName: "Poudel",
        gender: "Male",
        currentTravelId: "id-1",
        dob: DateTime.now(),
        rank: "Apprentice",
        documentUploadUsage:
            DocumentUploadUsage(maxLimit: 1500, used: 0, unit: "KB"));
    return profile;
  }
}
