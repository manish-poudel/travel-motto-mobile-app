// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_game_organiser.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelGameOrganiser _$TravelGameOrganiserFromJson(Map<String, dynamic> json) {
  return _TravelGameOrganiser.fromJson(json);
}

/// @nodoc
mixin _$TravelGameOrganiser {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get startedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelGameOrganiserCopyWith<TravelGameOrganiser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelGameOrganiserCopyWith<$Res> {
  factory $TravelGameOrganiserCopyWith(
          TravelGameOrganiser value, $Res Function(TravelGameOrganiser) then) =
      _$TravelGameOrganiserCopyWithImpl<$Res, TravelGameOrganiser>;
  @useResult
  $Res call(
      {String id,
      String name,
      String photoUrl,
      @TimestampConverter() DateTime startedAt});
}

/// @nodoc
class _$TravelGameOrganiserCopyWithImpl<$Res, $Val extends TravelGameOrganiser>
    implements $TravelGameOrganiserCopyWith<$Res> {
  _$TravelGameOrganiserCopyWithImpl(this._value, this._then);

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
    Object? startedAt = null,
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
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelGameOrganiserImplCopyWith<$Res>
    implements $TravelGameOrganiserCopyWith<$Res> {
  factory _$$TravelGameOrganiserImplCopyWith(_$TravelGameOrganiserImpl value,
          $Res Function(_$TravelGameOrganiserImpl) then) =
      __$$TravelGameOrganiserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String photoUrl,
      @TimestampConverter() DateTime startedAt});
}

/// @nodoc
class __$$TravelGameOrganiserImplCopyWithImpl<$Res>
    extends _$TravelGameOrganiserCopyWithImpl<$Res, _$TravelGameOrganiserImpl>
    implements _$$TravelGameOrganiserImplCopyWith<$Res> {
  __$$TravelGameOrganiserImplCopyWithImpl(_$TravelGameOrganiserImpl _value,
      $Res Function(_$TravelGameOrganiserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? photoUrl = null,
    Object? startedAt = null,
  }) {
    return _then(_$TravelGameOrganiserImpl(
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
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelGameOrganiserImpl implements _TravelGameOrganiser {
  _$TravelGameOrganiserImpl(
      {required this.id,
      required this.name,
      required this.photoUrl,
      @TimestampConverter() required this.startedAt});

  factory _$TravelGameOrganiserImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelGameOrganiserImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String photoUrl;
  @override
  @TimestampConverter()
  final DateTime startedAt;

  @override
  String toString() {
    return 'TravelGameOrganiser(id: $id, name: $name, photoUrl: $photoUrl, startedAt: $startedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelGameOrganiserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, photoUrl, startedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelGameOrganiserImplCopyWith<_$TravelGameOrganiserImpl> get copyWith =>
      __$$TravelGameOrganiserImplCopyWithImpl<_$TravelGameOrganiserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelGameOrganiserImplToJson(
      this,
    );
  }
}

abstract class _TravelGameOrganiser implements TravelGameOrganiser {
  factory _TravelGameOrganiser(
          {required final String id,
          required final String name,
          required final String photoUrl,
          @TimestampConverter() required final DateTime startedAt}) =
      _$TravelGameOrganiserImpl;

  factory _TravelGameOrganiser.fromJson(Map<String, dynamic> json) =
      _$TravelGameOrganiserImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get photoUrl;
  @override
  @TimestampConverter()
  DateTime get startedAt;
  @override
  @JsonKey(ignore: true)
  _$$TravelGameOrganiserImplCopyWith<_$TravelGameOrganiserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
