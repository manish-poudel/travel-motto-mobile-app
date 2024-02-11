// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pexels_photo.g.dart';
part 'pexels_photo.freezed.dart';

/// pexel photo data model.
@freezed
class PexelsPhoto with _$PexelsPhoto {
  factory PexelsPhoto(
          {required int id,
          required int height,
          required int width,
          required ImageSrc src,
          required String photographer,
          @JsonKey(name: 'photographer_url') required String photographerUrl}) =
      _PexelsPhoto;

  factory PexelsPhoto.fromJson(Map<String, Object?> json) =>
      _$PexelsPhotoFromJson(json);
}

/// pexel photo data model.
@freezed
class ImageSrc with _$ImageSrc {
  factory ImageSrc({
    required String landscape,
  }) = _ImageSrc;

  factory ImageSrc.fromJson(Map<String, Object?> json) =>
      _$ImageSrcFromJson(json);
}
