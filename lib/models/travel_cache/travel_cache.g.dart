// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelCacheImpl _$$TravelCacheImplFromJson(Map<String, dynamic> json) =>
    _$TravelCacheImpl(
      travellerId: json['travellerId'] as String,
      status: json['status'] as String,
      travel: Travel.fromJson(json['travel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TravelCacheImplToJson(_$TravelCacheImpl instance) =>
    <String, dynamic>{
      'travellerId': instance.travellerId,
      'status': instance.status,
      'travel': instance.travel.toJson(),
    };
