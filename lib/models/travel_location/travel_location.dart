import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class TravelLocation {
  final Position position;
  final Placemark placemark;
  TravelLocation({
    required this.position,
    required this.placemark,
  });

  String getReadableLocation() {
    String combinedAddress = '';

    if (placemark.street != null && placemark.street!.isNotEmpty) {
      combinedAddress += '${placemark.street}, ';
    }

    if (placemark.subLocality != null && placemark.subLocality!.isNotEmpty) {
      combinedAddress += '${placemark.subLocality}, ';
    }

    if (placemark.locality != null && placemark.locality!.isNotEmpty) {
      combinedAddress += '${placemark.locality}, ';
    }

    if (placemark.administrativeArea != null &&
        placemark.administrativeArea!.isNotEmpty) {
      combinedAddress += '${placemark.administrativeArea}, ';
    }

    if (placemark.country != null && placemark.country!.isNotEmpty) {
      combinedAddress += placemark.country ?? '';
    }
    return combinedAddress.trim();
  }
}
