// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pexels_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PexelsPhoto _$PexelsPhotoFromJson(Map<String, dynamic> json) {
  return _PexelsPhoto.fromJson(json);
}

/// @nodoc
mixin _$PexelsPhoto {
  int get id => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  ImageSrc get src => throw _privateConstructorUsedError;
  String get photographer => throw _privateConstructorUsedError;
  @JsonKey(name: 'photographer_url')
  String get photographerUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PexelsPhotoCopyWith<PexelsPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PexelsPhotoCopyWith<$Res> {
  factory $PexelsPhotoCopyWith(
          PexelsPhoto value, $Res Function(PexelsPhoto) then) =
      _$PexelsPhotoCopyWithImpl<$Res, PexelsPhoto>;
  @useResult
  $Res call(
      {int id,
      int height,
      int width,
      ImageSrc src,
      String photographer,
      @JsonKey(name: 'photographer_url') String photographerUrl});

  $ImageSrcCopyWith<$Res> get src;
}

/// @nodoc
class _$PexelsPhotoCopyWithImpl<$Res, $Val extends PexelsPhoto>
    implements $PexelsPhotoCopyWith<$Res> {
  _$PexelsPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? height = null,
    Object? width = null,
    Object? src = null,
    Object? photographer = null,
    Object? photographerUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as ImageSrc,
      photographer: null == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      photographerUrl: null == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageSrcCopyWith<$Res> get src {
    return $ImageSrcCopyWith<$Res>(_value.src, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PexelsPhotoImplCopyWith<$Res>
    implements $PexelsPhotoCopyWith<$Res> {
  factory _$$PexelsPhotoImplCopyWith(
          _$PexelsPhotoImpl value, $Res Function(_$PexelsPhotoImpl) then) =
      __$$PexelsPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int height,
      int width,
      ImageSrc src,
      String photographer,
      @JsonKey(name: 'photographer_url') String photographerUrl});

  @override
  $ImageSrcCopyWith<$Res> get src;
}

/// @nodoc
class __$$PexelsPhotoImplCopyWithImpl<$Res>
    extends _$PexelsPhotoCopyWithImpl<$Res, _$PexelsPhotoImpl>
    implements _$$PexelsPhotoImplCopyWith<$Res> {
  __$$PexelsPhotoImplCopyWithImpl(
      _$PexelsPhotoImpl _value, $Res Function(_$PexelsPhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? height = null,
    Object? width = null,
    Object? src = null,
    Object? photographer = null,
    Object? photographerUrl = null,
  }) {
    return _then(_$PexelsPhotoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as ImageSrc,
      photographer: null == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      photographerUrl: null == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PexelsPhotoImpl implements _PexelsPhoto {
  _$PexelsPhotoImpl(
      {required this.id,
      required this.height,
      required this.width,
      required this.src,
      required this.photographer,
      @JsonKey(name: 'photographer_url') required this.photographerUrl});

  factory _$PexelsPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PexelsPhotoImplFromJson(json);

  @override
  final int id;
  @override
  final int height;
  @override
  final int width;
  @override
  final ImageSrc src;
  @override
  final String photographer;
  @override
  @JsonKey(name: 'photographer_url')
  final String photographerUrl;

  @override
  String toString() {
    return 'PexelsPhoto(id: $id, height: $height, width: $width, src: $src, photographer: $photographer, photographerUrl: $photographerUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PexelsPhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.photographer, photographer) ||
                other.photographer == photographer) &&
            (identical(other.photographerUrl, photographerUrl) ||
                other.photographerUrl == photographerUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, height, width, src, photographer, photographerUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PexelsPhotoImplCopyWith<_$PexelsPhotoImpl> get copyWith =>
      __$$PexelsPhotoImplCopyWithImpl<_$PexelsPhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PexelsPhotoImplToJson(
      this,
    );
  }
}

abstract class _PexelsPhoto implements PexelsPhoto {
  factory _PexelsPhoto(
      {required final int id,
      required final int height,
      required final int width,
      required final ImageSrc src,
      required final String photographer,
      @JsonKey(name: 'photographer_url')
      required final String photographerUrl}) = _$PexelsPhotoImpl;

  factory _PexelsPhoto.fromJson(Map<String, dynamic> json) =
      _$PexelsPhotoImpl.fromJson;

  @override
  int get id;
  @override
  int get height;
  @override
  int get width;
  @override
  ImageSrc get src;
  @override
  String get photographer;
  @override
  @JsonKey(name: 'photographer_url')
  String get photographerUrl;
  @override
  @JsonKey(ignore: true)
  _$$PexelsPhotoImplCopyWith<_$PexelsPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageSrc _$ImageSrcFromJson(Map<String, dynamic> json) {
  return _ImageSrc.fromJson(json);
}

/// @nodoc
mixin _$ImageSrc {
  String get landscape => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageSrcCopyWith<ImageSrc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSrcCopyWith<$Res> {
  factory $ImageSrcCopyWith(ImageSrc value, $Res Function(ImageSrc) then) =
      _$ImageSrcCopyWithImpl<$Res, ImageSrc>;
  @useResult
  $Res call({String landscape});
}

/// @nodoc
class _$ImageSrcCopyWithImpl<$Res, $Val extends ImageSrc>
    implements $ImageSrcCopyWith<$Res> {
  _$ImageSrcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? landscape = null,
  }) {
    return _then(_value.copyWith(
      landscape: null == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageSrcImplCopyWith<$Res>
    implements $ImageSrcCopyWith<$Res> {
  factory _$$ImageSrcImplCopyWith(
          _$ImageSrcImpl value, $Res Function(_$ImageSrcImpl) then) =
      __$$ImageSrcImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String landscape});
}

/// @nodoc
class __$$ImageSrcImplCopyWithImpl<$Res>
    extends _$ImageSrcCopyWithImpl<$Res, _$ImageSrcImpl>
    implements _$$ImageSrcImplCopyWith<$Res> {
  __$$ImageSrcImplCopyWithImpl(
      _$ImageSrcImpl _value, $Res Function(_$ImageSrcImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? landscape = null,
  }) {
    return _then(_$ImageSrcImpl(
      landscape: null == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageSrcImpl implements _ImageSrc {
  _$ImageSrcImpl({required this.landscape});

  factory _$ImageSrcImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageSrcImplFromJson(json);

  @override
  final String landscape;

  @override
  String toString() {
    return 'ImageSrc(landscape: $landscape)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSrcImpl &&
            (identical(other.landscape, landscape) ||
                other.landscape == landscape));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, landscape);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSrcImplCopyWith<_$ImageSrcImpl> get copyWith =>
      __$$ImageSrcImplCopyWithImpl<_$ImageSrcImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageSrcImplToJson(
      this,
    );
  }
}

abstract class _ImageSrc implements ImageSrc {
  factory _ImageSrc({required final String landscape}) = _$ImageSrcImpl;

  factory _ImageSrc.fromJson(Map<String, dynamic> json) =
      _$ImageSrcImpl.fromJson;

  @override
  String get landscape;
  @override
  @JsonKey(ignore: true)
  _$$ImageSrcImplCopyWith<_$ImageSrcImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
