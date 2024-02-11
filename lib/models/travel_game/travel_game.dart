import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/converters/datetime_converter.dart';

part 'travel_game.g.dart';
part 'travel_game.freezed.dart';

@freezed
class TravelGame with _$TravelGame {
  factory TravelGame(
      {required String id,
      required List<double> location,
      required String question,
      required String answer,
      required String notes,
      @TimestampConverter() required DateTime createdAt,
      required String? photoUrl,
      required double allowRadius,
      required String fullAddress,
      required bool isOwner,
      required String author,
      required String lockedNotes,
      String? photoOwner,
      String? photoSource,
      String? photoOwnerLink}) = _TravelGame;

  factory TravelGame.fromJson(Map<String, Object?> json) =>
      _$TravelGameFromJson(json);
}
