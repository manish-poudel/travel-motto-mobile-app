import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/photos/pexels/pexels_photo.dart';

part 'travel_photos.g.dart';
part 'travel_photos.freezed.dart';

/// pexel photo data model.
@freezed
class TravelPhotos with _$TravelPhotos {
  factory TravelPhotos(
      {required String destination,
      required List<PexelsPhoto> pexelsPhotos}) = _TravelPhotos;

  factory TravelPhotos.fromJson(Map<String, Object?> json) =>
      _$TravelPhotosFromJson(json);
}
