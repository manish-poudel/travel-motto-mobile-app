// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_game_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelGamePlayerImpl _$$TravelGamePlayerImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelGamePlayerImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      completed: json['completed'] as bool,
      lastPlayed:
          const TimestampConverter().fromJson(json['lastPlayed'] as Timestamp),
    );

Map<String, dynamic> _$$TravelGamePlayerImplToJson(
        _$TravelGamePlayerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'completed': instance.completed,
      'lastPlayed': const TimestampConverter().toJson(instance.lastPlayed),
    };
