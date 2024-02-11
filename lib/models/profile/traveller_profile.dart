import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/converters/datetime_converter.dart';

part 'traveller_profile.g.dart';
part 'traveller_profile.freezed.dart';

@freezed
class DocumentUploadUsage with _$DocumentUploadUsage {
  factory DocumentUploadUsage({
    required double used,
    required double maxLimit,
    required String unit,
  }) = _DocumentUploadUsage;

  factory DocumentUploadUsage.fromJson(Map<String, Object?> json) =>
      _$DocumentUploadUsageFromJson(json);
}

/// User data model.
@freezed
class TravellerProfile with _$TravellerProfile {
  factory TravellerProfile(
      {required String id,
      required String firstName,
      required String lastName,
      @TimestampConverter() required DateTime dob,
      required DocumentUploadUsage documentUploadUsage,
      required String rank,
      required String gender,
      String? currentTravelId,
      String? photoUrl}) = _TravellerProfile;

  factory TravellerProfile.fromJson(Map<String, Object?> json) =>
      _$TravellerProfileFromJson(json);
}
