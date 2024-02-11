// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/converters/datetime_string_converter.dart';

part 'travel.g.dart';
part 'travel.freezed.dart';

@freezed
class Travel with _$Travel {
  @JsonSerializable(explicitToJson: true)
  factory Travel(
      {required String id,
      required String status,
      required String name,
      required List<double> startPos,
      required List<double>? endPos,
      required String startFullAddress,
      required String endFullAddress,
      List<double>? startedPos,
      List<double>? completedPos,
      @DateTimeStringConverter() required DateTime startDate,
      @DateTimeStringConverter() DateTime? endDate,
      required List<CheckList>? checkList}) = _Travel;

  factory Travel.fromJson(Map<String, Object?> json) => _$TravelFromJson(json);
}

@freezed
class CheckList with _$CheckList {
  @JsonSerializable(explicitToJson: true)
  factory CheckList({required String name, required String status}) =
      _CheckList;

  factory CheckList.fromJson(Map<String, Object?> json) =>
      _$CheckListFromJson(json);
}
