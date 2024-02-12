import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/converters/datetime_converter.dart';

part 'travel_game_organiser.g.dart';
part 'travel_game_organiser.freezed.dart';

@freezed
class TravelGameOrganiser with _$TravelGameOrganiser {
  factory TravelGameOrganiser(
          {required String id,
          required String name,
          required String photoUrl,
          @TimestampConverter() required DateTime startedAt}) =
      _TravelGameOrganiser;

  factory TravelGameOrganiser.fromJson(Map<String, Object?> json) =>
      _$TravelGameOrganiserFromJson(json);
}
