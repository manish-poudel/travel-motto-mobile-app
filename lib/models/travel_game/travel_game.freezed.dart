// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelGame _$TravelGameFromJson(Map<String, dynamic> json) {
  return _TravelGame.fromJson(json);
}

/// @nodoc
mixin _$TravelGame {
  String get id => throw _privateConstructorUsedError;
  List<double> get location => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  double get allowRadius => throw _privateConstructorUsedError;
  String get fullAddress => throw _privateConstructorUsedError;
  bool get isOwner => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get lockedNotes => throw _privateConstructorUsedError;
  String? get photoOwner => throw _privateConstructorUsedError;
  String? get photoSource => throw _privateConstructorUsedError;
  String? get photoOwnerLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelGameCopyWith<TravelGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelGameCopyWith<$Res> {
  factory $TravelGameCopyWith(
          TravelGame value, $Res Function(TravelGame) then) =
      _$TravelGameCopyWithImpl<$Res, TravelGame>;
  @useResult
  $Res call(
      {String id,
      List<double> location,
      String question,
      String answer,
      String notes,
      @TimestampConverter() DateTime createdAt,
      String? photoUrl,
      double allowRadius,
      String fullAddress,
      bool isOwner,
      String author,
      String lockedNotes,
      String? photoOwner,
      String? photoSource,
      String? photoOwnerLink});
}

/// @nodoc
class _$TravelGameCopyWithImpl<$Res, $Val extends TravelGame>
    implements $TravelGameCopyWith<$Res> {
  _$TravelGameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? question = null,
    Object? answer = null,
    Object? notes = null,
    Object? createdAt = null,
    Object? photoUrl = freezed,
    Object? allowRadius = null,
    Object? fullAddress = null,
    Object? isOwner = null,
    Object? author = null,
    Object? lockedNotes = null,
    Object? photoOwner = freezed,
    Object? photoSource = freezed,
    Object? photoOwnerLink = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<double>,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      allowRadius: null == allowRadius
          ? _value.allowRadius
          : allowRadius // ignore: cast_nullable_to_non_nullable
              as double,
      fullAddress: null == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      lockedNotes: null == lockedNotes
          ? _value.lockedNotes
          : lockedNotes // ignore: cast_nullable_to_non_nullable
              as String,
      photoOwner: freezed == photoOwner
          ? _value.photoOwner
          : photoOwner // ignore: cast_nullable_to_non_nullable
              as String?,
      photoSource: freezed == photoSource
          ? _value.photoSource
          : photoSource // ignore: cast_nullable_to_non_nullable
              as String?,
      photoOwnerLink: freezed == photoOwnerLink
          ? _value.photoOwnerLink
          : photoOwnerLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelGameImplCopyWith<$Res>
    implements $TravelGameCopyWith<$Res> {
  factory _$$TravelGameImplCopyWith(
          _$TravelGameImpl value, $Res Function(_$TravelGameImpl) then) =
      __$$TravelGameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<double> location,
      String question,
      String answer,
      String notes,
      @TimestampConverter() DateTime createdAt,
      String? photoUrl,
      double allowRadius,
      String fullAddress,
      bool isOwner,
      String author,
      String lockedNotes,
      String? photoOwner,
      String? photoSource,
      String? photoOwnerLink});
}

/// @nodoc
class __$$TravelGameImplCopyWithImpl<$Res>
    extends _$TravelGameCopyWithImpl<$Res, _$TravelGameImpl>
    implements _$$TravelGameImplCopyWith<$Res> {
  __$$TravelGameImplCopyWithImpl(
      _$TravelGameImpl _value, $Res Function(_$TravelGameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? question = null,
    Object? answer = null,
    Object? notes = null,
    Object? createdAt = null,
    Object? photoUrl = freezed,
    Object? allowRadius = null,
    Object? fullAddress = null,
    Object? isOwner = null,
    Object? author = null,
    Object? lockedNotes = null,
    Object? photoOwner = freezed,
    Object? photoSource = freezed,
    Object? photoOwnerLink = freezed,
  }) {
    return _then(_$TravelGameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<double>,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      allowRadius: null == allowRadius
          ? _value.allowRadius
          : allowRadius // ignore: cast_nullable_to_non_nullable
              as double,
      fullAddress: null == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String,
      isOwner: null == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      lockedNotes: null == lockedNotes
          ? _value.lockedNotes
          : lockedNotes // ignore: cast_nullable_to_non_nullable
              as String,
      photoOwner: freezed == photoOwner
          ? _value.photoOwner
          : photoOwner // ignore: cast_nullable_to_non_nullable
              as String?,
      photoSource: freezed == photoSource
          ? _value.photoSource
          : photoSource // ignore: cast_nullable_to_non_nullable
              as String?,
      photoOwnerLink: freezed == photoOwnerLink
          ? _value.photoOwnerLink
          : photoOwnerLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelGameImpl implements _TravelGame {
  _$TravelGameImpl(
      {required this.id,
      required final List<double> location,
      required this.question,
      required this.answer,
      required this.notes,
      @TimestampConverter() required this.createdAt,
      required this.photoUrl,
      required this.allowRadius,
      required this.fullAddress,
      required this.isOwner,
      required this.author,
      required this.lockedNotes,
      this.photoOwner,
      this.photoSource,
      this.photoOwnerLink})
      : _location = location;

  factory _$TravelGameImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelGameImplFromJson(json);

  @override
  final String id;
  final List<double> _location;
  @override
  List<double> get location {
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_location);
  }

  @override
  final String question;
  @override
  final String answer;
  @override
  final String notes;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  final String? photoUrl;
  @override
  final double allowRadius;
  @override
  final String fullAddress;
  @override
  final bool isOwner;
  @override
  final String author;
  @override
  final String lockedNotes;
  @override
  final String? photoOwner;
  @override
  final String? photoSource;
  @override
  final String? photoOwnerLink;

  @override
  String toString() {
    return 'TravelGame(id: $id, location: $location, question: $question, answer: $answer, notes: $notes, createdAt: $createdAt, photoUrl: $photoUrl, allowRadius: $allowRadius, fullAddress: $fullAddress, isOwner: $isOwner, author: $author, lockedNotes: $lockedNotes, photoOwner: $photoOwner, photoSource: $photoSource, photoOwnerLink: $photoOwnerLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelGameImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.allowRadius, allowRadius) ||
                other.allowRadius == allowRadius) &&
            (identical(other.fullAddress, fullAddress) ||
                other.fullAddress == fullAddress) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.lockedNotes, lockedNotes) ||
                other.lockedNotes == lockedNotes) &&
            (identical(other.photoOwner, photoOwner) ||
                other.photoOwner == photoOwner) &&
            (identical(other.photoSource, photoSource) ||
                other.photoSource == photoSource) &&
            (identical(other.photoOwnerLink, photoOwnerLink) ||
                other.photoOwnerLink == photoOwnerLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_location),
      question,
      answer,
      notes,
      createdAt,
      photoUrl,
      allowRadius,
      fullAddress,
      isOwner,
      author,
      lockedNotes,
      photoOwner,
      photoSource,
      photoOwnerLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelGameImplCopyWith<_$TravelGameImpl> get copyWith =>
      __$$TravelGameImplCopyWithImpl<_$TravelGameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelGameImplToJson(
      this,
    );
  }
}

abstract class _TravelGame implements TravelGame {
  factory _TravelGame(
      {required final String id,
      required final List<double> location,
      required final String question,
      required final String answer,
      required final String notes,
      @TimestampConverter() required final DateTime createdAt,
      required final String? photoUrl,
      required final double allowRadius,
      required final String fullAddress,
      required final bool isOwner,
      required final String author,
      required final String lockedNotes,
      final String? photoOwner,
      final String? photoSource,
      final String? photoOwnerLink}) = _$TravelGameImpl;

  factory _TravelGame.fromJson(Map<String, dynamic> json) =
      _$TravelGameImpl.fromJson;

  @override
  String get id;
  @override
  List<double> get location;
  @override
  String get question;
  @override
  String get answer;
  @override
  String get notes;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  String? get photoUrl;
  @override
  double get allowRadius;
  @override
  String get fullAddress;
  @override
  bool get isOwner;
  @override
  String get author;
  @override
  String get lockedNotes;
  @override
  String? get photoOwner;
  @override
  String? get photoSource;
  @override
  String? get photoOwnerLink;
  @override
  @JsonKey(ignore: true)
  _$$TravelGameImplCopyWith<_$TravelGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
