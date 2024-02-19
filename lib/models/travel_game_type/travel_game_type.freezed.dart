// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_game_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelGameType _$TravelGameTypeFromJson(Map<String, dynamic> json) {
  return _TravelGameType.fromJson(json);
}

/// @nodoc
mixin _$TravelGameType {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  String get organiserId => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get organiserName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelGameTypeCopyWith<TravelGameType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelGameTypeCopyWith<$Res> {
  factory $TravelGameTypeCopyWith(
          TravelGameType value, $Res Function(TravelGameType) then) =
      _$TravelGameTypeCopyWithImpl<$Res, TravelGameType>;
  @useResult
  $Res call(
      {String id,
      String name,
      String photoUrl,
      String organiserId,
      @TimestampConverter() DateTime updatedAt,
      @TimestampConverter() DateTime createdAt,
      String? organiserName});
}

/// @nodoc
class _$TravelGameTypeCopyWithImpl<$Res, $Val extends TravelGameType>
    implements $TravelGameTypeCopyWith<$Res> {
  _$TravelGameTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? photoUrl = null,
    Object? organiserId = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? organiserName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      organiserId: null == organiserId
          ? _value.organiserId
          : organiserId // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      organiserName: freezed == organiserName
          ? _value.organiserName
          : organiserName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelGameTypeImplCopyWith<$Res>
    implements $TravelGameTypeCopyWith<$Res> {
  factory _$$TravelGameTypeImplCopyWith(_$TravelGameTypeImpl value,
          $Res Function(_$TravelGameTypeImpl) then) =
      __$$TravelGameTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String photoUrl,
      String organiserId,
      @TimestampConverter() DateTime updatedAt,
      @TimestampConverter() DateTime createdAt,
      String? organiserName});
}

/// @nodoc
class __$$TravelGameTypeImplCopyWithImpl<$Res>
    extends _$TravelGameTypeCopyWithImpl<$Res, _$TravelGameTypeImpl>
    implements _$$TravelGameTypeImplCopyWith<$Res> {
  __$$TravelGameTypeImplCopyWithImpl(
      _$TravelGameTypeImpl _value, $Res Function(_$TravelGameTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? photoUrl = null,
    Object? organiserId = null,
    Object? updatedAt = null,
    Object? createdAt = null,
    Object? organiserName = freezed,
  }) {
    return _then(_$TravelGameTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      organiserId: null == organiserId
          ? _value.organiserId
          : organiserId // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      organiserName: freezed == organiserName
          ? _value.organiserName
          : organiserName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelGameTypeImpl implements _TravelGameType {
  _$TravelGameTypeImpl(
      {required this.id,
      required this.name,
      required this.photoUrl,
      required this.organiserId,
      @TimestampConverter() required this.updatedAt,
      @TimestampConverter() required this.createdAt,
      this.organiserName});

  factory _$TravelGameTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelGameTypeImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String photoUrl;
  @override
  final String organiserId;
  @override
  @TimestampConverter()
  final DateTime updatedAt;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  final String? organiserName;

  @override
  String toString() {
    return 'TravelGameType(id: $id, name: $name, photoUrl: $photoUrl, organiserId: $organiserId, updatedAt: $updatedAt, createdAt: $createdAt, organiserName: $organiserName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelGameTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.organiserId, organiserId) ||
                other.organiserId == organiserId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.organiserName, organiserName) ||
                other.organiserName == organiserName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, photoUrl, organiserId,
      updatedAt, createdAt, organiserName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelGameTypeImplCopyWith<_$TravelGameTypeImpl> get copyWith =>
      __$$TravelGameTypeImplCopyWithImpl<_$TravelGameTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelGameTypeImplToJson(
      this,
    );
  }
}

abstract class _TravelGameType implements TravelGameType {
  factory _TravelGameType(
      {required final String id,
      required final String name,
      required final String photoUrl,
      required final String organiserId,
      @TimestampConverter() required final DateTime updatedAt,
      @TimestampConverter() required final DateTime createdAt,
      final String? organiserName}) = _$TravelGameTypeImpl;

  factory _TravelGameType.fromJson(Map<String, dynamic> json) =
      _$TravelGameTypeImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get photoUrl;
  @override
  String get organiserId;
  @override
  @TimestampConverter()
  DateTime get updatedAt;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  String? get organiserName;
  @override
  @JsonKey(ignore: true)
  _$$TravelGameTypeImplCopyWith<_$TravelGameTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
