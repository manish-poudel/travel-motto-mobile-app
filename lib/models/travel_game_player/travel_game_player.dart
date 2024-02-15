import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/converters/datetime_converter.dart';

part 'travel_game_player.g.dart';
part 'travel_game_player.freezed.dart';

@freezed
class TravelGamePlayer with _$TravelGamePlayer {
  factory TravelGamePlayer({
    required String id,
    required String name,
    required bool completed,
    @TimestampConverter() required DateTime lastPlayed,
  }) = _TravelGamePlayer;

  factory TravelGamePlayer.fromJson(Map<String, Object?> json) =>
      _$TravelGamePlayerFromJson(json);
}
