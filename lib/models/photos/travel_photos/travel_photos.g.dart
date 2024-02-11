// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_photos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelPhotosImpl _$$TravelPhotosImplFromJson(Map<String, dynamic> json) =>
    _$TravelPhotosImpl(
      destination: json['destination'] as String,
      pexelsPhotos: (json['pexelsPhotos'] as List<dynamic>)
          .map((e) => PexelsPhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TravelPhotosImplToJson(_$TravelPhotosImpl instance) =>
    <String, dynamic>{
      'destination': instance.destination,
      'pexelsPhotos': instance.pexelsPhotos.map((e) => e.toJson()).toList(),
    };
