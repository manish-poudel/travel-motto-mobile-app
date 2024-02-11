import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/photos/travel_photos/travel_photos.dart';
import 'package:travel_motto/models/travel/travel.dart';

part 'current_travel.g.dart';
part 'current_travel.freezed.dart';

/// pexel photo data model.
@freezed
class CurrentTravel with _$CurrentTravel {
  factory CurrentTravel(
      {required TravelPhotos photos,
      required Travel travel,
      double? remainingTravelDistance,
      int? completedCheckList}) = _CurrentTravel;

  factory CurrentTravel.fromJson(Map<String, Object?> json) =>
      _$CurrentTravelFromJson(json);
}
