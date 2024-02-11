// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_travel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentTravel _$CurrentTravelFromJson(Map<String, dynamic> json) {
  return _CurrentTravel.fromJson(json);
}

/// @nodoc
mixin _$CurrentTravel {
  TravelPhotos get photos => throw _privateConstructorUsedError;
  Travel get travel => throw _privateConstructorUsedError;
  double? get remainingTravelDistance => throw _privateConstructorUsedError;
  int? get completedCheckList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentTravelCopyWith<CurrentTravel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentTravelCopyWith<$Res> {
  factory $CurrentTravelCopyWith(
          CurrentTravel value, $Res Function(CurrentTravel) then) =
      _$CurrentTravelCopyWithImpl<$Res, CurrentTravel>;
  @useResult
  $Res call(
      {TravelPhotos photos,
      Travel travel,
      double? remainingTravelDistance,
      int? completedCheckList});

  $TravelPhotosCopyWith<$Res> get photos;
  $TravelCopyWith<$Res> get travel;
}

/// @nodoc
class _$CurrentTravelCopyWithImpl<$Res, $Val extends CurrentTravel>
    implements $CurrentTravelCopyWith<$Res> {
  _$CurrentTravelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? travel = null,
    Object? remainingTravelDistance = freezed,
    Object? completedCheckList = freezed,
  }) {
    return _then(_value.copyWith(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as TravelPhotos,
      travel: null == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as Travel,
      remainingTravelDistance: freezed == remainingTravelDistance
          ? _value.remainingTravelDistance
          : remainingTravelDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      completedCheckList: freezed == completedCheckList
          ? _value.completedCheckList
          : completedCheckList // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelPhotosCopyWith<$Res> get photos {
    return $TravelPhotosCopyWith<$Res>(_value.photos, (value) {
      return _then(_value.copyWith(photos: value) as $Val);
    });
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
abstract class _$$CurrentTravelImplCopyWith<$Res>
    implements $CurrentTravelCopyWith<$Res> {
  factory _$$CurrentTravelImplCopyWith(
          _$CurrentTravelImpl value, $Res Function(_$CurrentTravelImpl) then) =
      __$$CurrentTravelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TravelPhotos photos,
      Travel travel,
      double? remainingTravelDistance,
      int? completedCheckList});

  @override
  $TravelPhotosCopyWith<$Res> get photos;
  @override
  $TravelCopyWith<$Res> get travel;
}

/// @nodoc
class __$$CurrentTravelImplCopyWithImpl<$Res>
    extends _$CurrentTravelCopyWithImpl<$Res, _$CurrentTravelImpl>
    implements _$$CurrentTravelImplCopyWith<$Res> {
  __$$CurrentTravelImplCopyWithImpl(
      _$CurrentTravelImpl _value, $Res Function(_$CurrentTravelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
    Object? travel = null,
    Object? remainingTravelDistance = freezed,
    Object? completedCheckList = freezed,
  }) {
    return _then(_$CurrentTravelImpl(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as TravelPhotos,
      travel: null == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as Travel,
      remainingTravelDistance: freezed == remainingTravelDistance
          ? _value.remainingTravelDistance
          : remainingTravelDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      completedCheckList: freezed == completedCheckList
          ? _value.completedCheckList
          : completedCheckList // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentTravelImpl implements _CurrentTravel {
  _$CurrentTravelImpl(
      {required this.photos,
      required this.travel,
      this.remainingTravelDistance,
      this.completedCheckList});

  factory _$CurrentTravelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentTravelImplFromJson(json);

  @override
  final TravelPhotos photos;
  @override
  final Travel travel;
  @override
  final double? remainingTravelDistance;
  @override
  final int? completedCheckList;

  @override
  String toString() {
    return 'CurrentTravel(photos: $photos, travel: $travel, remainingTravelDistance: $remainingTravelDistance, completedCheckList: $completedCheckList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentTravelImpl &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.travel, travel) || other.travel == travel) &&
            (identical(
                    other.remainingTravelDistance, remainingTravelDistance) ||
                other.remainingTravelDistance == remainingTravelDistance) &&
            (identical(other.completedCheckList, completedCheckList) ||
                other.completedCheckList == completedCheckList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, photos, travel, remainingTravelDistance, completedCheckList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentTravelImplCopyWith<_$CurrentTravelImpl> get copyWith =>
      __$$CurrentTravelImplCopyWithImpl<_$CurrentTravelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentTravelImplToJson(
      this,
    );
  }
}

abstract class _CurrentTravel implements CurrentTravel {
  factory _CurrentTravel(
      {required final TravelPhotos photos,
      required final Travel travel,
      final double? remainingTravelDistance,
      final int? completedCheckList}) = _$CurrentTravelImpl;

  factory _CurrentTravel.fromJson(Map<String, dynamic> json) =
      _$CurrentTravelImpl.fromJson;

  @override
  TravelPhotos get photos;
  @override
  Travel get travel;
  @override
  double? get remainingTravelDistance;
  @override
  int? get completedCheckList;
  @override
  @JsonKey(ignore: true)
  _$$CurrentTravelImplCopyWith<_$CurrentTravelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
