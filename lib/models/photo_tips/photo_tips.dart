import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_tips.g.dart';
part 'photo_tips.freezed.dart';

@freezed
class PhotoTips with _$PhotoTips {
  factory PhotoTips({
    required String text,
    required String photoUrl,
  }) = _PhotoTips;

  factory PhotoTips.fromJson(Map<String, Object?> json) =>
      _$PhotoTipsFromJson(json);
}
