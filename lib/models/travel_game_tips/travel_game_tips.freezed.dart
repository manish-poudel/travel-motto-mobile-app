// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_game_tips.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelGameTips _$TravelGameTipsFromJson(Map<String, dynamic> json) {
  return _TravelGameTips.fromJson(json);
}

/// @nodoc
mixin _$TravelGameTips {
  String get id => throw _privateConstructorUsedError;
  List<PhotoTips> get tips => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelGameTipsCopyWith<TravelGameTips> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelGameTipsCopyWith<$Res> {
  factory $TravelGameTipsCopyWith(
          TravelGameTips value, $Res Function(TravelGameTips) then) =
      _$TravelGameTipsCopyWithImpl<$Res, TravelGameTips>;
  @useResult
  $Res call({String id, List<PhotoTips> tips});
}

/// @nodoc
class _$TravelGameTipsCopyWithImpl<$Res, $Val extends TravelGameTips>
    implements $TravelGameTipsCopyWith<$Res> {
  _$TravelGameTipsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tips = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tips: null == tips
          ? _value.tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<PhotoTips>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelGameTipsImplCopyWith<$Res>
    implements $TravelGameTipsCopyWith<$Res> {
  factory _$$TravelGameTipsImplCopyWith(_$TravelGameTipsImpl value,
          $Res Function(_$TravelGameTipsImpl) then) =
      __$$TravelGameTipsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<PhotoTips> tips});
}

/// @nodoc
class __$$TravelGameTipsImplCopyWithImpl<$Res>
    extends _$TravelGameTipsCopyWithImpl<$Res, _$TravelGameTipsImpl>
    implements _$$TravelGameTipsImplCopyWith<$Res> {
  __$$TravelGameTipsImplCopyWithImpl(
      _$TravelGameTipsImpl _value, $Res Function(_$TravelGameTipsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tips = null,
  }) {
    return _then(_$TravelGameTipsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tips: null == tips
          ? _value._tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<PhotoTips>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelGameTipsImpl implements _TravelGameTips {
  _$TravelGameTipsImpl({required this.id, required final List<PhotoTips> tips})
      : _tips = tips;

  factory _$TravelGameTipsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelGameTipsImplFromJson(json);

  @override
  final String id;
  final List<PhotoTips> _tips;
  @override
  List<PhotoTips> get tips {
    if (_tips is EqualUnmodifiableListView) return _tips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tips);
  }

  @override
  String toString() {
    return 'TravelGameTips(id: $id, tips: $tips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelGameTipsImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._tips, _tips));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_tips));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelGameTipsImplCopyWith<_$TravelGameTipsImpl> get copyWith =>
      __$$TravelGameTipsImplCopyWithImpl<_$TravelGameTipsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelGameTipsImplToJson(
      this,
    );
  }
}

abstract class _TravelGameTips implements TravelGameTips {
  factory _TravelGameTips(
      {required final String id,
      required final List<PhotoTips> tips}) = _$TravelGameTipsImpl;

  factory _TravelGameTips.fromJson(Map<String, dynamic> json) =
      _$TravelGameTipsImpl.fromJson;

  @override
  String get id;
  @override
  List<PhotoTips> get tips;
  @override
  @JsonKey(ignore: true)
  _$$TravelGameTipsImplCopyWith<_$TravelGameTipsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
