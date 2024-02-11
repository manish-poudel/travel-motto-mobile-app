// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_notes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationNotesImpl _$$LocationNotesImplFromJson(Map<String, dynamic> json) =>
    _$LocationNotesImpl(
      authorId: json['authorId'] as String,
      authorName: json['authorName'] as String,
      fullAddress: json['fullAddress'] as String,
      title: json['title'] as String,
      notes: json['notes'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      state: json['state'] as String,
      noteId: json['noteId'] as String?,
      views: json['views'] as int?,
    );

Map<String, dynamic> _$$LocationNotesImplToJson(_$LocationNotesImpl instance) =>
    <String, dynamic>{
      'authorId': instance.authorId,
      'authorName': instance.authorName,
      'fullAddress': instance.fullAddress,
      'title': instance.title,
      'notes': instance.notes,
      'lat': instance.lat,
      'lng': instance.lng,
      'state': instance.state,
      'noteId': instance.noteId,
      'views': instance.views,
    };
