// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_tips.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoTips _$PhotoTipsFromJson(Map<String, dynamic> json) {
  return _PhotoTips.fromJson(json);
}

/// @nodoc
mixin _$PhotoTips {
  String get text => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoTipsCopyWith<PhotoTips> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoTipsCopyWith<$Res> {
  factory $PhotoTipsCopyWith(PhotoTips value, $Res Function(PhotoTips) then) =
      _$PhotoTipsCopyWithImpl<$Res, PhotoTips>;
  @useResult
  $Res call({String text, String photoUrl});
}

/// @nodoc
class _$PhotoTipsCopyWithImpl<$Res, $Val extends PhotoTips>
    implements $PhotoTipsCopyWith<$Res> {
  _$PhotoTipsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? photoUrl = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoTipsImplCopyWith<$Res>
    implements $PhotoTipsCopyWith<$Res> {
  factory _$$PhotoTipsImplCopyWith(
          _$PhotoTipsImpl value, $Res Function(_$PhotoTipsImpl) then) =
      __$$PhotoTipsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String photoUrl});
}

/// @nodoc
class __$$PhotoTipsImplCopyWithImpl<$Res>
    extends _$PhotoTipsCopyWithImpl<$Res, _$PhotoTipsImpl>
    implements _$$PhotoTipsImplCopyWith<$Res> {
  __$$PhotoTipsImplCopyWithImpl(
      _$PhotoTipsImpl _value, $Res Function(_$PhotoTipsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? photoUrl = null,
  }) {
    return _then(_$PhotoTipsImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoTipsImpl implements _PhotoTips {
  _$PhotoTipsImpl({required this.text, required this.photoUrl});

  factory _$PhotoTipsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoTipsImplFromJson(json);

  @override
  final String text;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'PhotoTips(text: $text, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoTipsImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoTipsImplCopyWith<_$PhotoTipsImpl> get copyWith =>
      __$$PhotoTipsImplCopyWithImpl<_$PhotoTipsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoTipsImplToJson(
      this,
    );
  }
}

abstract class _PhotoTips implements PhotoTips {
  factory _PhotoTips(
      {required final String text,
      required final String photoUrl}) = _$PhotoTipsImpl;

  factory _PhotoTips.fromJson(Map<String, dynamic> json) =
      _$PhotoTipsImpl.fromJson;

  @override
  String get text;
  @override
  String get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$PhotoTipsImplCopyWith<_$PhotoTipsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
