// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_game_organiser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelGameOrganiserImpl _$$TravelGameOrganiserImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelGameOrganiserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String,
      startedAt:
          const TimestampConverter().fromJson(json['startedAt'] as Timestamp),
    );

Map<String, dynamic> _$$TravelGameOrganiserImplToJson(
        _$TravelGameOrganiserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'startedAt': const TimestampConverter().toJson(instance.startedAt),
    };
