// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_game_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelGameTypeImpl _$$TravelGameTypeImplFromJson(Map<String, dynamic> json) =>
    _$TravelGameTypeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String,
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Timestamp),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$TravelGameTypeImplToJson(
        _$TravelGameTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
    };
