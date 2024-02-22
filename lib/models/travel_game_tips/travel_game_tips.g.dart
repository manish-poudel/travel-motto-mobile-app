// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_game_tips.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelGameTipsImpl _$$TravelGameTipsImplFromJson(Map<String, dynamic> json) =>
    _$TravelGameTipsImpl(
      id: json['id'] as String,
      tips: (json['tips'] as List<dynamic>)
          .map((e) => PhotoTips.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TravelGameTipsImplToJson(
        _$TravelGameTipsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tips': instance.tips.map((e) => e.toJson()).toList(),
    };
