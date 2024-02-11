import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:travel_motto/models/open_street_location/os_location.dart';

class OSMapRepository {
  Future<List<OSLocation>> getLocationFromQuery(
      {required String locationQuery, int limit = 10}) async {
    List<OSLocation> osLocation = [];
    final response = await http.get(
      Uri.parse(
          'https://nominatim.openstreetmap.org/search?format=json&q=$locationQuery&limit=$limit'),
      headers: {'Accept-Language': 'en-US'},
    );
    for (var element in (jsonDecode(response.body) as List)) {
      osLocation.add(OSLocation.fromJson(element));
    }
    return osLocation;
  }

  Future<List<OSLocation>> getMockLocation() async {
    List<OSLocation> osLocation = [];

    await Future.delayed(const Duration(seconds: 1));
    var response = [
      {
        "place_id": 241178702,
        "licence":
            "Data © OpenStreetMap contributors, ODbL 1.0. http://osm.org/copyright",
        "osm_type": "node",
        "osm_id": 4719615889,
        "lat": "27.7250256",
        "lon": "85.34074",
        "class": "place",
        "type": "suburb",
        "place_rank": 19,
        "importance": 0.27501,
        "addresstype": "suburb",
        "name": "Dhumbarahi",
        "display_name":
            "Dhumbarahi, Kathmandu-04, Kathmandu, Kathmandu Metropolitan City, Kathmandu, Bagmati Province, 00975, Nepal",
        "boundingbox": ["27.7050256", "27.7450256", "85.3207400", "85.3607400"]
      },
      {
        "place_id": 240304604,
        "licence":
            "Data © OpenStreetMap contributors, ODbL 1.0. http://osm.org/copyright",
        "osm_type": "node",
        "osm_id": 2120583603,
        "lat": "27.7317853",
        "lon": "85.3444755",
        "class": "place",
        "type": "suburb",
        "place_rank": 19,
        "importance": 0.27501,
        "addresstype": "suburb",
        "name": "Dhumbarahi",
        "display_name":
            "Dhumbarahi, Budhanilkantha-09, Budhanilkantha Municipality, Kathmandu, Bagmati Province, 44606, Nepal",
        "boundingbox": ["27.7117853", "27.7517853", "85.3244755", "85.3644755"]
      }
    ];
    for (var element in response) {
      osLocation.add(OSLocation.fromJson(element));
    }
    return osLocation;
  }
}
