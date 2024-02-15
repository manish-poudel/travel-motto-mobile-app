// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'traveller_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentUploadUsageImpl _$$DocumentUploadUsageImplFromJson(
        Map<String, dynamic> json) =>
    _$DocumentUploadUsageImpl(
      used: (json['used'] as num).toDouble(),
      maxLimit: (json['maxLimit'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$DocumentUploadUsageImplToJson(
        _$DocumentUploadUsageImpl instance) =>
    <String, dynamic>{
      'used': instance.used,
      'maxLimit': instance.maxLimit,
      'unit': instance.unit,
    };

_$TravellerProfileImpl _$$TravellerProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$TravellerProfileImpl(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      dob: const TimestampConverter().fromJson(json['dob'] as Timestamp),
      documentUploadUsage: DocumentUploadUsage.fromJson(
          json['documentUploadUsage'] as Map<String, dynamic>),
      rank: json['rank'] as String,
      gender: json['gender'] as String,
      currentTravelId: json['currentTravelId'] as String?,
      points: json['points'] as int?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$TravellerProfileImplToJson(
        _$TravellerProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dob': const TimestampConverter().toJson(instance.dob),
      'documentUploadUsage': instance.documentUploadUsage.toJson(),
      'rank': instance.rank,
      'gender': instance.gender,
      'currentTravelId': instance.currentTravelId,
      'points': instance.points,
      'photoUrl': instance.photoUrl,
    };
