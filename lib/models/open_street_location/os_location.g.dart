// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'os_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OSLocationImpl _$$OSLocationImplFromJson(Map<String, dynamic> json) =>
    _$OSLocationImpl(
      address: json['address'] as Map<String, dynamic>?,
      displayName: json['display_name'] as String?,
      importance: (json['importance'] as num?)?.toDouble(),
      lat: json['lat'] as String?,
      lon: json['lon'] as String?,
    );

Map<String, dynamic> _$$OSLocationImplToJson(_$OSLocationImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'display_name': instance.displayName,
      'importance': instance.importance,
      'lat': instance.lat,
      'lon': instance.lon,
    };
