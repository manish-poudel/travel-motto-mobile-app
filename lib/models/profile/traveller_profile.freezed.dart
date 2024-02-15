// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traveller_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentUploadUsage _$DocumentUploadUsageFromJson(Map<String, dynamic> json) {
  return _DocumentUploadUsage.fromJson(json);
}

/// @nodoc
mixin _$DocumentUploadUsage {
  double get used => throw _privateConstructorUsedError;
  double get maxLimit => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentUploadUsageCopyWith<DocumentUploadUsage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentUploadUsageCopyWith<$Res> {
  factory $DocumentUploadUsageCopyWith(
          DocumentUploadUsage value, $Res Function(DocumentUploadUsage) then) =
      _$DocumentUploadUsageCopyWithImpl<$Res, DocumentUploadUsage>;
  @useResult
  $Res call({double used, double maxLimit, String unit});
}

/// @nodoc
class _$DocumentUploadUsageCopyWithImpl<$Res, $Val extends DocumentUploadUsage>
    implements $DocumentUploadUsageCopyWith<$Res> {
  _$DocumentUploadUsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? used = null,
    Object? maxLimit = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as double,
      maxLimit: null == maxLimit
          ? _value.maxLimit
          : maxLimit // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentUploadUsageImplCopyWith<$Res>
    implements $DocumentUploadUsageCopyWith<$Res> {
  factory _$$DocumentUploadUsageImplCopyWith(_$DocumentUploadUsageImpl value,
          $Res Function(_$DocumentUploadUsageImpl) then) =
      __$$DocumentUploadUsageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double used, double maxLimit, String unit});
}

/// @nodoc
class __$$DocumentUploadUsageImplCopyWithImpl<$Res>
    extends _$DocumentUploadUsageCopyWithImpl<$Res, _$DocumentUploadUsageImpl>
    implements _$$DocumentUploadUsageImplCopyWith<$Res> {
  __$$DocumentUploadUsageImplCopyWithImpl(_$DocumentUploadUsageImpl _value,
      $Res Function(_$DocumentUploadUsageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? used = null,
    Object? maxLimit = null,
    Object? unit = null,
  }) {
    return _then(_$DocumentUploadUsageImpl(
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as double,
      maxLimit: null == maxLimit
          ? _value.maxLimit
          : maxLimit // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentUploadUsageImpl implements _DocumentUploadUsage {
  _$DocumentUploadUsageImpl(
      {required this.used, required this.maxLimit, required this.unit});

  factory _$DocumentUploadUsageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentUploadUsageImplFromJson(json);

  @override
  final double used;
  @override
  final double maxLimit;
  @override
  final String unit;

  @override
  String toString() {
    return 'DocumentUploadUsage(used: $used, maxLimit: $maxLimit, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentUploadUsageImpl &&
            (identical(other.used, used) || other.used == used) &&
            (identical(other.maxLimit, maxLimit) ||
                other.maxLimit == maxLimit) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, used, maxLimit, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentUploadUsageImplCopyWith<_$DocumentUploadUsageImpl> get copyWith =>
      __$$DocumentUploadUsageImplCopyWithImpl<_$DocumentUploadUsageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentUploadUsageImplToJson(
      this,
    );
  }
}

abstract class _DocumentUploadUsage implements DocumentUploadUsage {
  factory _DocumentUploadUsage(
      {required final double used,
      required final double maxLimit,
      required final String unit}) = _$DocumentUploadUsageImpl;

  factory _DocumentUploadUsage.fromJson(Map<String, dynamic> json) =
      _$DocumentUploadUsageImpl.fromJson;

  @override
  double get used;
  @override
  double get maxLimit;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$DocumentUploadUsageImplCopyWith<_$DocumentUploadUsageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TravellerProfile _$TravellerProfileFromJson(Map<String, dynamic> json) {
  return _TravellerProfile.fromJson(json);
}

/// @nodoc
mixin _$TravellerProfile {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get dob => throw _privateConstructorUsedError;
  DocumentUploadUsage get documentUploadUsage =>
      throw _privateConstructorUsedError;
  String get rank => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String? get currentTravelId => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravellerProfileCopyWith<TravellerProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravellerProfileCopyWith<$Res> {
  factory $TravellerProfileCopyWith(
          TravellerProfile value, $Res Function(TravellerProfile) then) =
      _$TravellerProfileCopyWithImpl<$Res, TravellerProfile>;
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      @TimestampConverter() DateTime dob,
      DocumentUploadUsage documentUploadUsage,
      String rank,
      String gender,
      String? currentTravelId,
      int? points,
      String? photoUrl});

  $DocumentUploadUsageCopyWith<$Res> get documentUploadUsage;
}

/// @nodoc
class _$TravellerProfileCopyWithImpl<$Res, $Val extends TravellerProfile>
    implements $TravellerProfileCopyWith<$Res> {
  _$TravellerProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? dob = null,
    Object? documentUploadUsage = null,
    Object? rank = null,
    Object? gender = null,
    Object? currentTravelId = freezed,
    Object? points = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      documentUploadUsage: null == documentUploadUsage
          ? _value.documentUploadUsage
          : documentUploadUsage // ignore: cast_nullable_to_non_nullable
              as DocumentUploadUsage,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      currentTravelId: freezed == currentTravelId
          ? _value.currentTravelId
          : currentTravelId // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentUploadUsageCopyWith<$Res> get documentUploadUsage {
    return $DocumentUploadUsageCopyWith<$Res>(_value.documentUploadUsage,
        (value) {
      return _then(_value.copyWith(documentUploadUsage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TravellerProfileImplCopyWith<$Res>
    implements $TravellerProfileCopyWith<$Res> {
  factory _$$TravellerProfileImplCopyWith(_$TravellerProfileImpl value,
          $Res Function(_$TravellerProfileImpl) then) =
      __$$TravellerProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String firstName,
      String lastName,
      @TimestampConverter() DateTime dob,
      DocumentUploadUsage documentUploadUsage,
      String rank,
      String gender,
      String? currentTravelId,
      int? points,
      String? photoUrl});

  @override
  $DocumentUploadUsageCopyWith<$Res> get documentUploadUsage;
}

/// @nodoc
class __$$TravellerProfileImplCopyWithImpl<$Res>
    extends _$TravellerProfileCopyWithImpl<$Res, _$TravellerProfileImpl>
    implements _$$TravellerProfileImplCopyWith<$Res> {
  __$$TravellerProfileImplCopyWithImpl(_$TravellerProfileImpl _value,
      $Res Function(_$TravellerProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? dob = null,
    Object? documentUploadUsage = null,
    Object? rank = null,
    Object? gender = null,
    Object? currentTravelId = freezed,
    Object? points = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$TravellerProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      documentUploadUsage: null == documentUploadUsage
          ? _value.documentUploadUsage
          : documentUploadUsage // ignore: cast_nullable_to_non_nullable
              as DocumentUploadUsage,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      currentTravelId: freezed == currentTravelId
          ? _value.currentTravelId
          : currentTravelId // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravellerProfileImpl implements _TravellerProfile {
  _$TravellerProfileImpl(
      {required this.id,
      required this.firstName,
      required this.lastName,
      @TimestampConverter() required this.dob,
      required this.documentUploadUsage,
      required this.rank,
      required this.gender,
      this.currentTravelId,
      this.points,
      this.photoUrl});

  factory _$TravellerProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravellerProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  @TimestampConverter()
  final DateTime dob;
  @override
  final DocumentUploadUsage documentUploadUsage;
  @override
  final String rank;
  @override
  final String gender;
  @override
  final String? currentTravelId;
  @override
  final int? points;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'TravellerProfile(id: $id, firstName: $firstName, lastName: $lastName, dob: $dob, documentUploadUsage: $documentUploadUsage, rank: $rank, gender: $gender, currentTravelId: $currentTravelId, points: $points, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravellerProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.documentUploadUsage, documentUploadUsage) ||
                other.documentUploadUsage == documentUploadUsage) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.currentTravelId, currentTravelId) ||
                other.currentTravelId == currentTravelId) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, lastName, dob,
      documentUploadUsage, rank, gender, currentTravelId, points, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravellerProfileImplCopyWith<_$TravellerProfileImpl> get copyWith =>
      __$$TravellerProfileImplCopyWithImpl<_$TravellerProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravellerProfileImplToJson(
      this,
    );
  }
}

abstract class _TravellerProfile implements TravellerProfile {
  factory _TravellerProfile(
      {required final String id,
      required final String firstName,
      required final String lastName,
      @TimestampConverter() required final DateTime dob,
      required final DocumentUploadUsage documentUploadUsage,
      required final String rank,
      required final String gender,
      final String? currentTravelId,
      final int? points,
      final String? photoUrl}) = _$TravellerProfileImpl;

  factory _TravellerProfile.fromJson(Map<String, dynamic> json) =
      _$TravellerProfileImpl.fromJson;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  @TimestampConverter()
  DateTime get dob;
  @override
  DocumentUploadUsage get documentUploadUsage;
  @override
  String get rank;
  @override
  String get gender;
  @override
  String? get currentTravelId;
  @override
  int? get points;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$TravellerProfileImplCopyWith<_$TravellerProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
