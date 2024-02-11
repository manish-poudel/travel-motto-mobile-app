// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_photos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelPhotos _$TravelPhotosFromJson(Map<String, dynamic> json) {
  return _TravelPhotos.fromJson(json);
}

/// @nodoc
mixin _$TravelPhotos {
  String get destination => throw _privateConstructorUsedError;
  List<PexelsPhoto> get pexelsPhotos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelPhotosCopyWith<TravelPhotos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelPhotosCopyWith<$Res> {
  factory $TravelPhotosCopyWith(
          TravelPhotos value, $Res Function(TravelPhotos) then) =
      _$TravelPhotosCopyWithImpl<$Res, TravelPhotos>;
  @useResult
  $Res call({String destination, List<PexelsPhoto> pexelsPhotos});
}

/// @nodoc
class _$TravelPhotosCopyWithImpl<$Res, $Val extends TravelPhotos>
    implements $TravelPhotosCopyWith<$Res> {
  _$TravelPhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? pexelsPhotos = null,
  }) {
    return _then(_value.copyWith(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      pexelsPhotos: null == pexelsPhotos
          ? _value.pexelsPhotos
          : pexelsPhotos // ignore: cast_nullable_to_non_nullable
              as List<PexelsPhoto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelPhotosImplCopyWith<$Res>
    implements $TravelPhotosCopyWith<$Res> {
  factory _$$TravelPhotosImplCopyWith(
          _$TravelPhotosImpl value, $Res Function(_$TravelPhotosImpl) then) =
      __$$TravelPhotosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String destination, List<PexelsPhoto> pexelsPhotos});
}

/// @nodoc
class __$$TravelPhotosImplCopyWithImpl<$Res>
    extends _$TravelPhotosCopyWithImpl<$Res, _$TravelPhotosImpl>
    implements _$$TravelPhotosImplCopyWith<$Res> {
  __$$TravelPhotosImplCopyWithImpl(
      _$TravelPhotosImpl _value, $Res Function(_$TravelPhotosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? pexelsPhotos = null,
  }) {
    return _then(_$TravelPhotosImpl(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      pexelsPhotos: null == pexelsPhotos
          ? _value._pexelsPhotos
          : pexelsPhotos // ignore: cast_nullable_to_non_nullable
              as List<PexelsPhoto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelPhotosImpl implements _TravelPhotos {
  _$TravelPhotosImpl(
      {required this.destination,
      required final List<PexelsPhoto> pexelsPhotos})
      : _pexelsPhotos = pexelsPhotos;

  factory _$TravelPhotosImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelPhotosImplFromJson(json);

  @override
  final String destination;
  final List<PexelsPhoto> _pexelsPhotos;
  @override
  List<PexelsPhoto> get pexelsPhotos {
    if (_pexelsPhotos is EqualUnmodifiableListView) return _pexelsPhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pexelsPhotos);
  }

  @override
  String toString() {
    return 'TravelPhotos(destination: $destination, pexelsPhotos: $pexelsPhotos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPhotosImpl &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            const DeepCollectionEquality()
                .equals(other._pexelsPhotos, _pexelsPhotos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, destination,
      const DeepCollectionEquality().hash(_pexelsPhotos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelPhotosImplCopyWith<_$TravelPhotosImpl> get copyWith =>
      __$$TravelPhotosImplCopyWithImpl<_$TravelPhotosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelPhotosImplToJson(
      this,
    );
  }
}

abstract class _TravelPhotos implements TravelPhotos {
  factory _TravelPhotos(
      {required final String destination,
      required final List<PexelsPhoto> pexelsPhotos}) = _$TravelPhotosImpl;

  factory _TravelPhotos.fromJson(Map<String, dynamic> json) =
      _$TravelPhotosImpl.fromJson;

  @override
  String get destination;
  @override
  List<PexelsPhoto> get pexelsPhotos;
  @override
  @JsonKey(ignore: true)
  _$$TravelPhotosImplCopyWith<_$TravelPhotosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
