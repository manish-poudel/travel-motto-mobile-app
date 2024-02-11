// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_cache.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelCache _$TravelCacheFromJson(Map<String, dynamic> json) {
  return _TravelCache.fromJson(json);
}

/// @nodoc
mixin _$TravelCache {
  String get travellerId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  Travel get travel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelCacheCopyWith<TravelCache> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCacheCopyWith<$Res> {
  factory $TravelCacheCopyWith(
          TravelCache value, $Res Function(TravelCache) then) =
      _$TravelCacheCopyWithImpl<$Res, TravelCache>;
  @useResult
  $Res call({String travellerId, String status, Travel travel});

  $TravelCopyWith<$Res> get travel;
}

/// @nodoc
class _$TravelCacheCopyWithImpl<$Res, $Val extends TravelCache>
    implements $TravelCacheCopyWith<$Res> {
  _$TravelCacheCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travellerId = null,
    Object? status = null,
    Object? travel = null,
  }) {
    return _then(_value.copyWith(
      travellerId: null == travellerId
          ? _value.travellerId
          : travellerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      travel: null == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as Travel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelCopyWith<$Res> get travel {
    return $TravelCopyWith<$Res>(_value.travel, (value) {
      return _then(_value.copyWith(travel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TravelCacheImplCopyWith<$Res>
    implements $TravelCacheCopyWith<$Res> {
  factory _$$TravelCacheImplCopyWith(
          _$TravelCacheImpl value, $Res Function(_$TravelCacheImpl) then) =
      __$$TravelCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String travellerId, String status, Travel travel});

  @override
  $TravelCopyWith<$Res> get travel;
}

/// @nodoc
class __$$TravelCacheImplCopyWithImpl<$Res>
    extends _$TravelCacheCopyWithImpl<$Res, _$TravelCacheImpl>
    implements _$$TravelCacheImplCopyWith<$Res> {
  __$$TravelCacheImplCopyWithImpl(
      _$TravelCacheImpl _value, $Res Function(_$TravelCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travellerId = null,
    Object? status = null,
    Object? travel = null,
  }) {
    return _then(_$TravelCacheImpl(
      travellerId: null == travellerId
          ? _value.travellerId
          : travellerId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      travel: null == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as Travel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelCacheImpl implements _TravelCache {
  _$TravelCacheImpl(
      {required this.travellerId, required this.status, required this.travel});

  factory _$TravelCacheImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelCacheImplFromJson(json);

  @override
  final String travellerId;
  @override
  final String status;
  @override
  final Travel travel;

  @override
  String toString() {
    return 'TravelCache(travellerId: $travellerId, status: $status, travel: $travel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelCacheImpl &&
            (identical(other.travellerId, travellerId) ||
                other.travellerId == travellerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.travel, travel) || other.travel == travel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, travellerId, status, travel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelCacheImplCopyWith<_$TravelCacheImpl> get copyWith =>
      __$$TravelCacheImplCopyWithImpl<_$TravelCacheImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelCacheImplToJson(
      this,
    );
  }
}

abstract class _TravelCache implements TravelCache {
  factory _TravelCache(
      {required final String travellerId,
      required final String status,
      required final Travel travel}) = _$TravelCacheImpl;

  factory _TravelCache.fromJson(Map<String, dynamic> json) =
      _$TravelCacheImpl.fromJson;

  @override
  String get travellerId;
  @override
  String get status;
  @override
  Travel get travel;
  @override
  @JsonKey(ignore: true)
  _$$TravelCacheImplCopyWith<_$TravelCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
