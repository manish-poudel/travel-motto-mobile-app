import 'dart:convert';

import 'package:http/http.dart';
import 'package:travel_motto/env/env.dart';
import 'package:travel_motto/extensions/http_response.dart';
import 'package:travel_motto/models/photos/pexels/pexels_photo.dart';
import 'package:travel_motto/repositories/mock_pexel.dart';
import 'package:http/http.dart' as http;

class PexelsRepository {
  Future<List<PexelsPhoto>> getPhotosFromAPI(
      {required String query,
      String orientation = "square",
      int perPage = 10}) async {
    try {
      List<PexelsPhoto> pexelPhotosList = [];
      String url =
          "https://api.pexels.com/v1/search?query=$query&orientation=$orientation&per_page=$perPage";
      Response response = await http
          .get(Uri.parse(url), headers: {"Authorization": Env.pexelApiKey});
      if (response.ok) {
        Map<String, dynamic> pexelsData = jsonDecode(response.body);
        List<dynamic> pexelPhotos = pexelsData['photos'];
        for (var pexelPhoto in pexelPhotos) {
          pexelPhotosList.add(PexelsPhoto.fromJson(pexelPhoto));
        }
        return pexelPhotosList;
      } else {
        return pexelPhotosList;
      }
    } catch (err) {
      return [];
    }
  }

  Future<List<PexelsPhoto>> getMockPhotos({required String query}) async {
    List<PexelsPhoto> pexelPhotos = [];
    await Future.delayed(const Duration(seconds: 2));
    List<Map<String, dynamic>> photos = MockPexels.response["photos"];
    for (var element in photos) {
      pexelPhotos.add(PexelsPhoto.fromJson(element));
    }
    return pexelPhotos;
  }
}
