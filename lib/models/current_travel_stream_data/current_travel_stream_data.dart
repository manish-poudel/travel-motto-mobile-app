import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/current_travel.dart/current_travel.dart';
import 'package:travel_motto/repositories/current_travel_repository.dart';

part 'current_travel_stream_data.g.dart';
part 'current_travel_stream_data.freezed.dart';

/// pexel photo data model.
@freezed
class CurrentTravelStreamData with _$CurrentTravelStreamData {
  factory CurrentTravelStreamData(
      {final StreamProcess? process,
      final CurrentTravel? currentTravel}) = _CurrentTravelStreamData;

  factory CurrentTravelStreamData.fromJson(Map<String, Object?> json) =>
      _$CurrentTravelStreamDataFromJson(json);
}
