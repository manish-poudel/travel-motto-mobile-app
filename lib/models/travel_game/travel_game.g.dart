// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelGameImpl _$$TravelGameImplFromJson(Map<String, dynamic> json) =>
    _$TravelGameImpl(
      id: json['id'] as String,
      location: (json['location'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      question: json['question'] as String,
      answer: json['answer'] as String,
      notes: json['notes'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      photoUrl: json['photoUrl'] as String?,
      allowRadius: (json['allowRadius'] as num).toDouble(),
      fullAddress: json['fullAddress'] as String,
      isOwner: json['isOwner'] as bool,
      author: json['author'] as String,
      lockedNotes: json['lockedNotes'] as String,
      photoOwner: json['photoOwner'] as String?,
      photoSource: json['photoSource'] as String?,
      photoOwnerLink: json['photoOwnerLink'] as String?,
    );

Map<String, dynamic> _$$TravelGameImplToJson(_$TravelGameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'question': instance.question,
      'answer': instance.answer,
      'notes': instance.notes,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'photoUrl': instance.photoUrl,
      'allowRadius': instance.allowRadius,
      'fullAddress': instance.fullAddress,
      'isOwner': instance.isOwner,
      'author': instance.author,
      'lockedNotes': instance.lockedNotes,
      'photoOwner': instance.photoOwner,
      'photoSource': instance.photoSource,
      'photoOwnerLink': instance.photoOwnerLink,
    };
