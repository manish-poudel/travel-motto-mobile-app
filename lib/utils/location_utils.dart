import 'package:geocoding/geocoding.dart';

class LocationUtils {
  static String getReadableLocation(Placemark placemark) {
    String combinedAddress = '';

    if (placemark.street != null) {
      combinedAddress += '${placemark.street}, ';
    }

    if (placemark.subLocality != null) {
      combinedAddress += '${placemark.subLocality}, ';
    }

    if (placemark.locality != null) {
      combinedAddress += '${placemark.locality}, ';
    }

    if (placemark.administrativeArea != null) {
      combinedAddress += '${placemark.administrativeArea}, ';
    }

    if (placemark.country != null) {
      combinedAddress += placemark.country ?? '';
    }
    return combinedAddress;
  }
}
