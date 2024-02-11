// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'os_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OSLocation _$OSLocationFromJson(Map<String, dynamic> json) {
  return _OSLocation.fromJson(json);
}

/// @nodoc
mixin _$OSLocation {
  Map<String, dynamic>? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  double? get importance => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OSLocationCopyWith<OSLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OSLocationCopyWith<$Res> {
  factory $OSLocationCopyWith(
          OSLocation value, $Res Function(OSLocation) then) =
      _$OSLocationCopyWithImpl<$Res, OSLocation>;
  @useResult
  $Res call(
      {Map<String, dynamic>? address,
      @JsonKey(name: 'display_name') String? displayName,
      double? importance,
      String? lat,
      String? lon});
}

/// @nodoc
class _$OSLocationCopyWithImpl<$Res, $Val extends OSLocation>
    implements $OSLocationCopyWith<$Res> {
  _$OSLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? displayName = freezed,
    Object? importance = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      importance: freezed == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OSLocationImplCopyWith<$Res>
    implements $OSLocationCopyWith<$Res> {
  factory _$$OSLocationImplCopyWith(
          _$OSLocationImpl value, $Res Function(_$OSLocationImpl) then) =
      __$$OSLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? address,
      @JsonKey(name: 'display_name') String? displayName,
      double? importance,
      String? lat,
      String? lon});
}

/// @nodoc
class __$$OSLocationImplCopyWithImpl<$Res>
    extends _$OSLocationCopyWithImpl<$Res, _$OSLocationImpl>
    implements _$$OSLocationImplCopyWith<$Res> {
  __$$OSLocationImplCopyWithImpl(
      _$OSLocationImpl _value, $Res Function(_$OSLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? displayName = freezed,
    Object? importance = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$OSLocationImpl(
      address: freezed == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      importance: freezed == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OSLocationImpl implements _OSLocation {
  _$OSLocationImpl(
      {final Map<String, dynamic>? address,
      @JsonKey(name: 'display_name') this.displayName,
      this.importance,
      this.lat,
      this.lon})
      : _address = address;

  factory _$OSLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OSLocationImplFromJson(json);

  final Map<String, dynamic>? _address;
  @override
  Map<String, dynamic>? get address {
    final value = _address;
    if (value == null) return null;
    if (_address is EqualUnmodifiableMapView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
  @override
  final double? importance;
  @override
  final String? lat;
  @override
  final String? lon;

  @override
  String toString() {
    return 'OSLocation(address: $address, displayName: $displayName, importance: $importance, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OSLocationImpl &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.importance, importance) ||
                other.importance == importance) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_address),
      displayName,
      importance,
      lat,
      lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OSLocationImplCopyWith<_$OSLocationImpl> get copyWith =>
      __$$OSLocationImplCopyWithImpl<_$OSLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OSLocationImplToJson(
      this,
    );
  }
}

abstract class _OSLocation implements OSLocation {
  factory _OSLocation(
      {final Map<String, dynamic>? address,
      @JsonKey(name: 'display_name') final String? displayName,
      final double? importance,
      final String? lat,
      final String? lon}) = _$OSLocationImpl;

  factory _OSLocation.fromJson(Map<String, dynamic> json) =
      _$OSLocationImpl.fromJson;

  @override
  Map<String, dynamic>? get address;
  @override
  @JsonKey(name: 'display_name')
  String? get displayName;
  @override
  double? get importance;
  @override
  String? get lat;
  @override
  String? get lon;
  @override
  @JsonKey(ignore: true)
  _$$OSLocationImplCopyWith<_$OSLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
