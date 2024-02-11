import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:travel_motto/models/travel_location/travel_location.dart';

class LocationRepository {
  TravelLocation? travelLocation;

  // Get travel location
  Future<TravelLocation?> getCurrentLocation({bool refresh = false}) async {
    LocationPermission locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied ||
        locationPermission == LocationPermission.deniedForever) {
      return null;
    }
    if (!await Geolocator.isLocationServiceEnabled()) {
      return null;
    }
    // if we don't have to refresh
    if (!refresh) {
      if (travelLocation != null) {
        if (kDebugMode) {
          print("Returning the old travel location...");
        }
        return travelLocation!;
      }
    }
    if (kDebugMode) {
      print("Fetching location from api...");
    }
    Position position = await Geolocator.getCurrentPosition();

    if (position.isMocked) {
      return null;
    }
    // Get placemark from position
    List<Placemark> placemark =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    travelLocation =
        TravelLocation(placemark: placemark.first, position: position);
    return travelLocation!;
  }
}
