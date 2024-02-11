import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_notes.g.dart';
part 'location_notes.freezed.dart';

@freezed
class LocationNotes with _$LocationNotes {
  factory LocationNotes({
    required String authorId,
    required String authorName,
    required String fullAddress,
    required String title,
    required String notes,
    required double lat,
    required double lng,
    required String state,
    String? noteId,
    int? views,

    // @TimestampConverter() DateTime? createdAt,
    // @TimestampConverter() DateTime? updatedAt
  }) = _LocationNotes;

  factory LocationNotes.fromJson(Map<String, Object?> json) =>
      _$LocationNotesFromJson(json);
}
