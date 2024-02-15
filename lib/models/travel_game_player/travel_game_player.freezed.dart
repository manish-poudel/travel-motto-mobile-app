// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_game_player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelGamePlayer _$TravelGamePlayerFromJson(Map<String, dynamic> json) {
  return _TravelGamePlayer.fromJson(json);
}

/// @nodoc
mixin _$TravelGamePlayer {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get lastPlayed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelGamePlayerCopyWith<TravelGamePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelGamePlayerCopyWith<$Res> {
  factory $TravelGamePlayerCopyWith(
          TravelGamePlayer value, $Res Function(TravelGamePlayer) then) =
      _$TravelGamePlayerCopyWithImpl<$Res, TravelGamePlayer>;
  @useResult
  $Res call(
      {String id,
      String name,
      bool completed,
      @TimestampConverter() DateTime lastPlayed});
}

/// @nodoc
class _$TravelGamePlayerCopyWithImpl<$Res, $Val extends TravelGamePlayer>
    implements $TravelGamePlayerCopyWith<$Res> {
  _$TravelGamePlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? completed = null,
    Object? lastPlayed = null,
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
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      lastPlayed: null == lastPlayed
          ? _value.lastPlayed
          : lastPlayed // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelGamePlayerImplCopyWith<$Res>
    implements $TravelGamePlayerCopyWith<$Res> {
  factory _$$TravelGamePlayerImplCopyWith(_$TravelGamePlayerImpl value,
          $Res Function(_$TravelGamePlayerImpl) then) =
      __$$TravelGamePlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      bool completed,
      @TimestampConverter() DateTime lastPlayed});
}

/// @nodoc
class __$$TravelGamePlayerImplCopyWithImpl<$Res>
    extends _$TravelGamePlayerCopyWithImpl<$Res, _$TravelGamePlayerImpl>
    implements _$$TravelGamePlayerImplCopyWith<$Res> {
  __$$TravelGamePlayerImplCopyWithImpl(_$TravelGamePlayerImpl _value,
      $Res Function(_$TravelGamePlayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? completed = null,
    Object? lastPlayed = null,
  }) {
    return _then(_$TravelGamePlayerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      lastPlayed: null == lastPlayed
          ? _value.lastPlayed
          : lastPlayed // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelGamePlayerImpl implements _TravelGamePlayer {
  _$TravelGamePlayerImpl(
      {required this.id,
      required this.name,
      required this.completed,
      @TimestampConverter() required this.lastPlayed});

  factory _$TravelGamePlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelGamePlayerImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final bool completed;
  @override
  @TimestampConverter()
  final DateTime lastPlayed;

  @override
  String toString() {
    return 'TravelGamePlayer(id: $id, name: $name, completed: $completed, lastPlayed: $lastPlayed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelGamePlayerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.lastPlayed, lastPlayed) ||
                other.lastPlayed == lastPlayed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, completed, lastPlayed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelGamePlayerImplCopyWith<_$TravelGamePlayerImpl> get copyWith =>
      __$$TravelGamePlayerImplCopyWithImpl<_$TravelGamePlayerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelGamePlayerImplToJson(
      this,
    );
  }
}

abstract class _TravelGamePlayer implements TravelGamePlayer {
  factory _TravelGamePlayer(
          {required final String id,
          required final String name,
          required final bool completed,
          @TimestampConverter() required final DateTime lastPlayed}) =
      _$TravelGamePlayerImpl;

  factory _TravelGamePlayer.fromJson(Map<String, dynamic> json) =
      _$TravelGamePlayerImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get completed;
  @override
  @TimestampConverter()
  DateTime get lastPlayed;
  @override
  @JsonKey(ignore: true)
  _$$TravelGamePlayerImplCopyWith<_$TravelGamePlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
