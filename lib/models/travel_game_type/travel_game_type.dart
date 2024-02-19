import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/converters/datetime_converter.dart';

part 'travel_game_type.g.dart';
part 'travel_game_type.freezed.dart';

@freezed
class TravelGameType with _$TravelGameType {
  factory TravelGameType({
    required String id,
    required String name,
    required String photoUrl,
    required String organiserId,
    @TimestampConverter() required DateTime updatedAt,
    @TimestampConverter() required DateTime createdAt,
    String? organiserName,
  }) = _TravelGameType;

  factory TravelGameType.fromJson(Map<String, Object?> json) =>
      _$TravelGameTypeFromJson(json);
}
