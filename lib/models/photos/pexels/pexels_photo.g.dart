// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pexels_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PexelsPhotoImpl _$$PexelsPhotoImplFromJson(Map<String, dynamic> json) =>
    _$PexelsPhotoImpl(
      id: json['id'] as int,
      height: json['height'] as int,
      width: json['width'] as int,
      src: ImageSrc.fromJson(json['src'] as Map<String, dynamic>),
      photographer: json['photographer'] as String,
      photographerUrl: json['photographer_url'] as String,
    );

Map<String, dynamic> _$$PexelsPhotoImplToJson(_$PexelsPhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'height': instance.height,
      'width': instance.width,
      'src': instance.src.toJson(),
      'photographer': instance.photographer,
      'photographer_url': instance.photographerUrl,
    };

_$ImageSrcImpl _$$ImageSrcImplFromJson(Map<String, dynamic> json) =>
    _$ImageSrcImpl(
      landscape: json['landscape'] as String,
    );

Map<String, dynamic> _$$ImageSrcImplToJson(_$ImageSrcImpl instance) =>
    <String, dynamic>{
      'landscape': instance.landscape,
    };
