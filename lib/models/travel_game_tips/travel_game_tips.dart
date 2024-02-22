import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/photo_tips/photo_tips.dart';

part 'travel_game_tips.g.dart';
part 'travel_game_tips.freezed.dart';

@freezed
class TravelGameTips with _$TravelGameTips {
  factory TravelGameTips({
    required String id,
    required List<PhotoTips> tips,
  }) = _TravelGameTips;

  factory TravelGameTips.fromJson(Map<String, Object?> json) =>
      _$TravelGameTipsFromJson(json);
}
