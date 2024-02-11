// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_travel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentTravelImpl _$$CurrentTravelImplFromJson(Map<String, dynamic> json) =>
    _$CurrentTravelImpl(
      photos: TravelPhotos.fromJson(json['photos'] as Map<String, dynamic>),
      travel: Travel.fromJson(json['travel'] as Map<String, dynamic>),
      remainingTravelDistance:
          (json['remainingTravelDistance'] as num?)?.toDouble(),
      completedCheckList: json['completedCheckList'] as int?,
    );

Map<String, dynamic> _$$CurrentTravelImplToJson(_$CurrentTravelImpl instance) =>
    <String, dynamic>{
      'photos': instance.photos.toJson(),
      'travel': instance.travel.toJson(),
      'remainingTravelDistance': instance.remainingTravelDistance,
      'completedCheckList': instance.completedCheckList,
    };
