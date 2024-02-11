import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:travel_motto/models/location_notes/location_notes.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';

class LocationNotesRepository {
  final reference = FirebaseFirestore.instance
      .collection("location_notes")
      .withConverter<LocationNotes>(
        fromFirestore: (snapshots, _) =>
            LocationNotes.fromJson(snapshots.data()!),
        toFirestore: (locationNotes, _) => locationNotes.toJson(),
      );

  final String saveLocationNotesFn = "saveLocationNotes";
  final String getLocationNotesWithInProxmityFn =
      "getLocationNotesWithInProximity";

  final options = HttpsCallableOptions(
      timeout: const Duration(seconds: 60), limitedUseAppCheckToken: true);

  List<LocationNotes> _locationNotes = [];
  final StreamController<List<LocationNotes>> _locationNotesController =
      StreamController<List<LocationNotes>>.broadcast();
  Stream<List<LocationNotes>> get locationNotesStream =>
      _locationNotesController.stream;

  // Create note
  Future<HttpsCallableResult> saveLocationNotes(
      {required LocationNotes notes}) async {
    HttpsCallable callable = FirebaseFunctions.instance
        .httpsCallable(saveLocationNotesFn, options: options);
    return await callable.call(notes.toJson());
  }

  // Get note
  Future<List<LocationNotes>> getLocationNotesWithInProximity(
      {required Map<String, dynamic> data}) async {
    List<LocationNotes> locationNotes = [];
    HttpsCallable callable = FirebaseFunctions.instance
        .httpsCallable(getLocationNotesWithInProxmityFn, options: options);
    HttpsCallableResult result = await callable.call(data);
    List locationMaps = result.data;
    for (var element in locationMaps) {
      locationNotes
          .add(LocationNotes.fromJson(element.cast<String, dynamic>()));
    }
    return locationNotes;
  }

  // Get note
  streamLocationNotesWithInProximity(
      {required Map<String, dynamic> data}) async {
    _locationNotes.clear();
    HttpsCallable callable = FirebaseFunctions.instance
        .httpsCallable(getLocationNotesWithInProxmityFn, options: options);
    HttpsCallableResult result = await callable.call(data);
    List locationMaps = result.data;
    for (var element in locationMaps) {
      _locationNotes
          .add(LocationNotes.fromJson(element.cast<String, dynamic>()));
    }
    _locationNotesController.sink.add(_locationNotes);
  }

  // Get location notes
  Future<List<LocationNotes>> getMyLocationsNotes(
      {required String userId}) async {
    List<LocationNotes> notes = [];
    QuerySnapshot<LocationNotes> documentSnapshot = await reference
        .where("authorId", isEqualTo: userId)
        .orderBy("createdAt", descending: true)
        .limit(20)
        .get();
    for (var element in documentSnapshot.docs) {
      notes.add(element.data());
    }
    return notes;
  }

  // Get location notes
  streamMyLocationsNotes({required String userId}) async {
    _locationNotes.clear();
    QuerySnapshot<LocationNotes> documentSnapshot = await reference
        .where("authorId", isEqualTo: userId)
        .orderBy("createdAt", descending: true)
        .limit(20)
        .get();
    for (var element in documentSnapshot.docs) {
      _locationNotes.add(element.data());
    }
    _locationNotesController.sink.add(_locationNotes);
  }

  streamMockLocationNotes() async {
    await Future.delayed(const Duration(seconds: 2));
    _locationNotes = [
      LocationNotes(
          authorId: TravellerProfileRepository.profile.id,
          authorName: "Manish Poudel",
          noteId: "1",
          fullAddress:
              "Sunset Point Overlook, Grand Canyon National Park, Arizona, USA",
          title: "Sunset Point Overlook",
          notes:
              "Witnessed the most breathtaking sunset from this vantage point. The vibrant hues of orange and pink painted the sky, casting a mesmerizing glow over the landscape. A must-visit spot for nature lovers and photographers",
          state: "active",
          lat: 37.4219983,
          lng: -122.085),
      LocationNotes(
          authorId: TravellerProfileRepository.profile.id,
          authorName: "Patrick Poudel",
          noteId: "2",
          fullAddress: "Old Town Square, Prague, Czech Republic",
          title: "Historic Old Town Square",
          notes:
              "Stepping into history at Old Town Square! The cobblestone streets, quaint cafes, and iconic architecture transport you back in time. Don't miss the Astronomical Clock and the lively atmosphere of this charming square",
          state: "trash_requested",
          lat: 37.4219983,
          lng: -122.085),
      LocationNotes(
          authorId: TravellerProfileRepository.profile.id,
          authorName: "Manish Poudel",
          fullAddress: "Old Town Square, Prague, Czech Republic",
          noteId: "3",
          title: "Enchanting Forest Glade",
          notes:
              "Wandered into an enchanting forest glade straight out of a fairytale. Sunlight filtering through the canopy, birdsong filling the air – it's a scene of pure magic. Take a deep breath and let nature's tranquility wash over you",
          state: "active",
          lat: 37.4222503,
          lng: -122.086783),
      LocationNotes(
          authorId: "",
          authorName: "Smith",
          fullAddress: "Dhumbarahi,Kathmandu,Nepal",
          noteId: "4",
          title: "Vibrant Street Art Alley",
          notes:
              "Explored the vibrant street art alley today, where every corner is a canvas bursting with color and creativity. From whimsical murals to thought-provoking graffiti, each piece tells a unique story. Art enthusiasts, rejoice!",
          state: "trash_requested",
          lat: 0,
          lng: 0),
    ];
    _locationNotesController.sink.add(_locationNotes);
  }

  cLearLocationNotes() {
    _locationNotes.clear();
    _locationNotesController.sink.add(_locationNotes);
  }

  trashLocationNotes({required LocationNotes locationNotes}) {
    _locationNotes.remove(locationNotes);
    _locationNotesController.sink.add(_locationNotes);
  }

  updateLocationNotes({required LocationNotes updatedLocationNotes}) {
    int index = _locationNotes
        .indexWhere((element) => element.noteId == updatedLocationNotes.noteId);
    _locationNotes.removeAt(index);
    _locationNotes.insert(index, updatedLocationNotes);
    _locationNotesController.sink.add(_locationNotes);
  }
}
