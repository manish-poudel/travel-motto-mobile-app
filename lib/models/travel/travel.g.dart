// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelImpl _$$TravelImplFromJson(Map<String, dynamic> json) => _$TravelImpl(
      id: json['id'] as String,
      status: json['status'] as String,
      name: json['name'] as String,
      startPos: (json['startPos'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      endPos: (json['endPos'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      startFullAddress: json['startFullAddress'] as String,
      endFullAddress: json['endFullAddress'] as String,
      startedPos: (json['startedPos'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      completedPos: (json['completedPos'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      startDate:
          const DateTimeStringConverter().fromJson(json['startDate'] as String),
      endDate: _$JsonConverterFromJson<String, DateTime>(
          json['endDate'], const DateTimeStringConverter().fromJson),
      checkList: (json['checkList'] as List<dynamic>?)
          ?.map((e) => CheckList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TravelImplToJson(_$TravelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'name': instance.name,
      'startPos': instance.startPos,
      'endPos': instance.endPos,
      'startFullAddress': instance.startFullAddress,
      'endFullAddress': instance.endFullAddress,
      'startedPos': instance.startedPos,
      'completedPos': instance.completedPos,
      'startDate': const DateTimeStringConverter().toJson(instance.startDate),
      'endDate': _$JsonConverterToJson<String, DateTime>(
          instance.endDate, const DateTimeStringConverter().toJson),
      'checkList': instance.checkList?.map((e) => e.toJson()).toList(),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$CheckListImpl _$$CheckListImplFromJson(Map<String, dynamic> json) =>
    _$CheckListImpl(
      name: json['name'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$CheckListImplToJson(_$CheckListImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
    };
