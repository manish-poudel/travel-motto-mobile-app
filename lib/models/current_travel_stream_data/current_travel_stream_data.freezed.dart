// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_travel_stream_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentTravelStreamData _$CurrentTravelStreamDataFromJson(
    Map<String, dynamic> json) {
  return _CurrentTravelStreamData.fromJson(json);
}

/// @nodoc
mixin _$CurrentTravelStreamData {
  StreamProcess? get process => throw _privateConstructorUsedError;
  CurrentTravel? get currentTravel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentTravelStreamDataCopyWith<CurrentTravelStreamData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentTravelStreamDataCopyWith<$Res> {
  factory $CurrentTravelStreamDataCopyWith(CurrentTravelStreamData value,
          $Res Function(CurrentTravelStreamData) then) =
      _$CurrentTravelStreamDataCopyWithImpl<$Res, CurrentTravelStreamData>;
  @useResult
  $Res call({StreamProcess? process, CurrentTravel? currentTravel});

  $CurrentTravelCopyWith<$Res>? get currentTravel;
}

/// @nodoc
class _$CurrentTravelStreamDataCopyWithImpl<$Res,
        $Val extends CurrentTravelStreamData>
    implements $CurrentTravelStreamDataCopyWith<$Res> {
  _$CurrentTravelStreamDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? process = freezed,
    Object? currentTravel = freezed,
  }) {
    return _then(_value.copyWith(
      process: freezed == process
          ? _value.process
          : process // ignore: cast_nullable_to_non_nullable
              as StreamProcess?,
      currentTravel: freezed == currentTravel
          ? _value.currentTravel
          : currentTravel // ignore: cast_nullable_to_non_nullable
              as CurrentTravel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentTravelCopyWith<$Res>? get currentTravel {
    if (_value.currentTravel == null) {
      return null;
    }

    return $CurrentTravelCopyWith<$Res>(_value.currentTravel!, (value) {
      return _then(_value.copyWith(currentTravel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentTravelStreamDataImplCopyWith<$Res>
    implements $CurrentTravelStreamDataCopyWith<$Res> {
  factory _$$CurrentTravelStreamDataImplCopyWith(
          _$CurrentTravelStreamDataImpl value,
          $Res Function(_$CurrentTravelStreamDataImpl) then) =
      __$$CurrentTravelStreamDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StreamProcess? process, CurrentTravel? currentTravel});

  @override
  $CurrentTravelCopyWith<$Res>? get currentTravel;
}

/// @nodoc
class __$$CurrentTravelStreamDataImplCopyWithImpl<$Res>
    extends _$CurrentTravelStreamDataCopyWithImpl<$Res,
        _$CurrentTravelStreamDataImpl>
    implements _$$CurrentTravelStreamDataImplCopyWith<$Res> {
  __$$CurrentTravelStreamDataImplCopyWithImpl(
      _$CurrentTravelStreamDataImpl _value,
      $Res Function(_$CurrentTravelStreamDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? process = freezed,
    Object? currentTravel = freezed,
  }) {
    return _then(_$CurrentTravelStreamDataImpl(
      process: freezed == process
          ? _value.process
          : process // ignore: cast_nullable_to_non_nullable
              as StreamProcess?,
      currentTravel: freezed == currentTravel
          ? _value.currentTravel
          : currentTravel // ignore: cast_nullable_to_non_nullable
              as CurrentTravel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentTravelStreamDataImpl implements _CurrentTravelStreamData {
  _$CurrentTravelStreamDataImpl({this.process, this.currentTravel});

  factory _$CurrentTravelStreamDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentTravelStreamDataImplFromJson(json);

  @override
  final StreamProcess? process;
  @override
  final CurrentTravel? currentTravel;

  @override
  String toString() {
    return 'CurrentTravelStreamData(process: $process, currentTravel: $currentTravel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentTravelStreamDataImpl &&
            (identical(other.process, process) || other.process == process) &&
            (identical(other.currentTravel, currentTravel) ||
                other.currentTravel == currentTravel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, process, currentTravel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentTravelStreamDataImplCopyWith<_$CurrentTravelStreamDataImpl>
      get copyWith => __$$CurrentTravelStreamDataImplCopyWithImpl<
          _$CurrentTravelStreamDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentTravelStreamDataImplToJson(
      this,
    );
  }
}

abstract class _CurrentTravelStreamData implements CurrentTravelStreamData {
  factory _CurrentTravelStreamData(
      {final StreamProcess? process,
      final CurrentTravel? currentTravel}) = _$CurrentTravelStreamDataImpl;

  factory _CurrentTravelStreamData.fromJson(Map<String, dynamic> json) =
      _$CurrentTravelStreamDataImpl.fromJson;

  @override
  StreamProcess? get process;
  @override
  CurrentTravel? get currentTravel;
  @override
  @JsonKey(ignore: true)
  _$$CurrentTravelStreamDataImplCopyWith<_$CurrentTravelStreamDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
