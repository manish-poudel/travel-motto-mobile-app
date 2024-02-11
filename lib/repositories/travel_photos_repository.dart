import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:travel_motto/models/photos/pexels/pexels_photo.dart';
import 'package:travel_motto/models/photos/travel_photos/travel_photos.dart';
import 'package:travel_motto/repositories/pexel_repository.dart';
import 'package:travel_motto/services/shared_preferences/shared_preferences_services.dart';

class TravelPhotosRepository {
  final PexelsRepository pexelsRepository;
  final SharedPreferencesServices sharedPreferencesServices;
  final publicTravelPhotosKey = "public_travel_photos";

  TravelPhotosRepository({
    required this.pexelsRepository,
    required this.sharedPreferencesServices,
  });

  Future<TravelPhotos> getPublicTravelPhotos(
      {required String destination, bool useCache = true}) async {
    try {
      String? cachedResponse =
          await _getCachedPublicTravelPhotos(destination: destination);

      if (cachedResponse != null && useCache) {
        if (kDebugMode) {
          print("Cache response found for pexel photos");
        }
        Map<String, dynamic> cachedMapResponse = jsonDecode(cachedResponse);
        TravelPhotos travelPhotos = TravelPhotos.fromJson(cachedMapResponse);
        // if cached response has same query as destination name, we can use it
        if (travelPhotos.destination == destination) {
          if (kDebugMode) {
            print(
                "Matching destination found. So,returning travel photos from cached response");
          }
          return TravelPhotos.fromJson(cachedMapResponse);
        } else {
          if (kDebugMode) {
            print("Matching destination not found..");
          }
        }
      }
      if (kDebugMode) {
        print("Returning travel photos from api");
      }
      TravelPhotos travelPhotos =
          await _getTravelPhotosFromAPI(destination: destination);
      _cachePublicTravelPhotos(travelPhotos: travelPhotos);
      return travelPhotos;
    } catch (err) {
      return TravelPhotos(destination: destination, pexelsPhotos: []);
    }
  }

  // Get pexel phtoos
  Future<TravelPhotos> _getTravelPhotosFromAPI(
      {required String destination}) async {
    List<PexelsPhoto> pexelPhotos =
        await pexelsRepository.getPhotosFromAPI(query: destination);
    return TravelPhotos(destination: destination, pexelsPhotos: pexelPhotos);
  }

  Future<String?> _getCachedPublicTravelPhotos(
      {required String destination}) async {
    return await sharedPreferencesServices.getString(
        key: publicTravelPhotosKey);
  }

  /// Cache public travel photos
  _cachePublicTravelPhotos({required TravelPhotos travelPhotos}) async {
    sharedPreferencesServices.setString(
        key: publicTravelPhotosKey, value: jsonEncode(travelPhotos.toJson()));
  }

  // Delete cached public travel photos
  deleteCachedPublicTravelPhotos() async {
    sharedPreferencesServices.delete(key: publicTravelPhotosKey);
  }
}
