// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_travel_stream_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentTravelStreamDataImpl _$$CurrentTravelStreamDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentTravelStreamDataImpl(
      process: $enumDecodeNullable(_$StreamProcessEnumMap, json['process']),
      currentTravel: json['currentTravel'] == null
          ? null
          : CurrentTravel.fromJson(
              json['currentTravel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentTravelStreamDataImplToJson(
        _$CurrentTravelStreamDataImpl instance) =>
    <String, dynamic>{
      'process': _$StreamProcessEnumMap[instance.process],
      'currentTravel': instance.currentTravel?.toJson(),
    };

const _$StreamProcessEnumMap = {
  StreamProcess.unknown: 'unknown',
  StreamProcess.loading: 'loading',
  StreamProcess.done: 'done',
};
