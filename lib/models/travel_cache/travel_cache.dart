import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/travel/travel.dart';

part 'travel_cache.g.dart';
part 'travel_cache.freezed.dart';

@freezed
class TravelCache with _$TravelCache {
  factory TravelCache(
      {required String travellerId,
      required String status,
      required Travel travel}) = _TravelCache;

  factory TravelCache.fromJson(Map<String, Object?> json) =>
      _$TravelCacheFromJson(json);
}
