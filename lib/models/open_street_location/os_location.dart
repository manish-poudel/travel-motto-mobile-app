// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'os_location.g.dart';
part 'os_location.freezed.dart';

@freezed
class OSLocation with _$OSLocation {
  factory OSLocation({
    Map<String, dynamic>? address,
    @JsonKey(name: 'display_name') String? displayName,
    double? importance,
    String? lat,
    String? lon,
  }) = _OSLocation;

  factory OSLocation.fromJson(Map<String, Object?> json) =>
      _$OSLocationFromJson(json);
}
