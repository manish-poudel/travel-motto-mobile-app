// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Travel _$TravelFromJson(Map<String, dynamic> json) {
  return _Travel.fromJson(json);
}

/// @nodoc
mixin _$Travel {
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<double> get startPos => throw _privateConstructorUsedError;
  List<double>? get endPos => throw _privateConstructorUsedError;
  String get startFullAddress => throw _privateConstructorUsedError;
  String get endFullAddress => throw _privateConstructorUsedError;
  List<double>? get startedPos => throw _privateConstructorUsedError;
  List<double>? get completedPos => throw _privateConstructorUsedError;
  @DateTimeStringConverter()
  DateTime get startDate => throw _privateConstructorUsedError;
  @DateTimeStringConverter()
  DateTime? get endDate => throw _privateConstructorUsedError;
  List<CheckList>? get checkList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelCopyWith<Travel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCopyWith<$Res> {
  factory $TravelCopyWith(Travel value, $Res Function(Travel) then) =
      _$TravelCopyWithImpl<$Res, Travel>;
  @useResult
  $Res call(
      {String id,
      String status,
      String name,
      List<double> startPos,
      List<double>? endPos,
      String startFullAddress,
      String endFullAddress,
      List<double>? startedPos,
      List<double>? completedPos,
      @DateTimeStringConverter() DateTime startDate,
      @DateTimeStringConverter() DateTime? endDate,
      List<CheckList>? checkList});
}

/// @nodoc
class _$TravelCopyWithImpl<$Res, $Val extends Travel>
    implements $TravelCopyWith<$Res> {
  _$TravelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? name = null,
    Object? startPos = null,
    Object? endPos = freezed,
    Object? startFullAddress = null,
    Object? endFullAddress = null,
    Object? startedPos = freezed,
    Object? completedPos = freezed,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? checkList = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startPos: null == startPos
          ? _value.startPos
          : startPos // ignore: cast_nullable_to_non_nullable
              as List<double>,
      endPos: freezed == endPos
          ? _value.endPos
          : endPos // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      startFullAddress: null == startFullAddress
          ? _value.startFullAddress
          : startFullAddress // ignore: cast_nullable_to_non_nullable
              as String,
      endFullAddress: null == endFullAddress
          ? _value.endFullAddress
          : endFullAddress // ignore: cast_nullable_to_non_nullable
              as String,
      startedPos: freezed == startedPos
          ? _value.startedPos
          : startedPos // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      completedPos: freezed == completedPos
          ? _value.completedPos
          : completedPos // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkList: freezed == checkList
          ? _value.checkList
          : checkList // ignore: cast_nullable_to_non_nullable
              as List<CheckList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelImplCopyWith<$Res> implements $TravelCopyWith<$Res> {
  factory _$$TravelImplCopyWith(
          _$TravelImpl value, $Res Function(_$TravelImpl) then) =
      __$$TravelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String status,
      String name,
      List<double> startPos,
      List<double>? endPos,
      String startFullAddress,
      String endFullAddress,
      List<double>? startedPos,
      List<double>? completedPos,
      @DateTimeStringConverter() DateTime startDate,
      @DateTimeStringConverter() DateTime? endDate,
      List<CheckList>? checkList});
}

/// @nodoc
class __$$TravelImplCopyWithImpl<$Res>
    extends _$TravelCopyWithImpl<$Res, _$TravelImpl>
    implements _$$TravelImplCopyWith<$Res> {
  __$$TravelImplCopyWithImpl(
      _$TravelImpl _value, $Res Function(_$TravelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? name = null,
    Object? startPos = null,
    Object? endPos = freezed,
    Object? startFullAddress = null,
    Object? endFullAddress = null,
    Object? startedPos = freezed,
    Object? completedPos = freezed,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? checkList = freezed,
  }) {
    return _then(_$TravelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startPos: null == startPos
          ? _value._startPos
          : startPos // ignore: cast_nullable_to_non_nullable
              as List<double>,
      endPos: freezed == endPos
          ? _value._endPos
          : endPos // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      startFullAddress: null == startFullAddress
          ? _value.startFullAddress
          : startFullAddress // ignore: cast_nullable_to_non_nullable
              as String,
      endFullAddress: null == endFullAddress
          ? _value.endFullAddress
          : endFullAddress // ignore: cast_nullable_to_non_nullable
              as String,
      startedPos: freezed == startedPos
          ? _value._startedPos
          : startedPos // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      completedPos: freezed == completedPos
          ? _value._completedPos
          : completedPos // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkList: freezed == checkList
          ? _value._checkList
          : checkList // ignore: cast_nullable_to_non_nullable
              as List<CheckList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelImpl extends _Travel {
  _$TravelImpl(
      {required this.id,
      required this.status,
      required this.name,
      required final List<double> startPos,
      required final List<double>? endPos,
      required this.startFullAddress,
      required this.endFullAddress,
      final List<double>? startedPos,
      final List<double>? completedPos,
      @DateTimeStringConverter() required this.startDate,
      @DateTimeStringConverter() this.endDate,
      required final List<CheckList>? checkList})
      : _startPos = startPos,
        _endPos = endPos,
        _startedPos = startedPos,
        _completedPos = completedPos,
        _checkList = checkList,
        super._();

  factory _$TravelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelImplFromJson(json);

  @override
  final String id;
  @override
  final String status;
  @override
  final String name;
  final List<double> _startPos;
  @override
  List<double> get startPos {
    if (_startPos is EqualUnmodifiableListView) return _startPos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_startPos);
  }

  final List<double>? _endPos;
  @override
  List<double>? get endPos {
    final value = _endPos;
    if (value == null) return null;
    if (_endPos is EqualUnmodifiableListView) return _endPos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String startFullAddress;
  @override
  final String endFullAddress;
  final List<double>? _startedPos;
  @override
  List<double>? get startedPos {
    final value = _startedPos;
    if (value == null) return null;
    if (_startedPos is EqualUnmodifiableListView) return _startedPos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _completedPos;
  @override
  List<double>? get completedPos {
    final value = _completedPos;
    if (value == null) return null;
    if (_completedPos is EqualUnmodifiableListView) return _completedPos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @DateTimeStringConverter()
  final DateTime startDate;
  @override
  @DateTimeStringConverter()
  final DateTime? endDate;
  final List<CheckList>? _checkList;
  @override
  List<CheckList>? get checkList {
    final value = _checkList;
    if (value == null) return null;
    if (_checkList is EqualUnmodifiableListView) return _checkList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Travel(id: $id, status: $status, name: $name, startPos: $startPos, endPos: $endPos, startFullAddress: $startFullAddress, endFullAddress: $endFullAddress, startedPos: $startedPos, completedPos: $completedPos, startDate: $startDate, endDate: $endDate, checkList: $checkList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._startPos, _startPos) &&
            const DeepCollectionEquality().equals(other._endPos, _endPos) &&
            (identical(other.startFullAddress, startFullAddress) ||
                other.startFullAddress == startFullAddress) &&
            (identical(other.endFullAddress, endFullAddress) ||
                other.endFullAddress == endFullAddress) &&
            const DeepCollectionEquality()
                .equals(other._startedPos, _startedPos) &&
            const DeepCollectionEquality()
                .equals(other._completedPos, _completedPos) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._checkList, _checkList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      name,
      const DeepCollectionEquality().hash(_startPos),
      const DeepCollectionEquality().hash(_endPos),
      startFullAddress,
      endFullAddress,
      const DeepCollectionEquality().hash(_startedPos),
      const DeepCollectionEquality().hash(_completedPos),
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_checkList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelImplCopyWith<_$TravelImpl> get copyWith =>
      __$$TravelImplCopyWithImpl<_$TravelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelImplToJson(
      this,
    );
  }
}

abstract class _Travel extends Travel {
  factory _Travel(
      {required final String id,
      required final String status,
      required final String name,
      required final List<double> startPos,
      required final List<double>? endPos,
      required final String startFullAddress,
      required final String endFullAddress,
      final List<double>? startedPos,
      final List<double>? completedPos,
      @DateTimeStringConverter() required final DateTime startDate,
      @DateTimeStringConverter() final DateTime? endDate,
      required final List<CheckList>? checkList}) = _$TravelImpl;
  _Travel._() : super._();

  factory _Travel.fromJson(Map<String, dynamic> json) = _$TravelImpl.fromJson;

  @override
  String get id;
  @override
  String get status;
  @override
  String get name;
  @override
  List<double> get startPos;
  @override
  List<double>? get endPos;
  @override
  String get startFullAddress;
  @override
  String get endFullAddress;
  @override
  List<double>? get startedPos;
  @override
  List<double>? get completedPos;
  @override
  @DateTimeStringConverter()
  DateTime get startDate;
  @override
  @DateTimeStringConverter()
  DateTime? get endDate;
  @override
  List<CheckList>? get checkList;
  @override
  @JsonKey(ignore: true)
  _$$TravelImplCopyWith<_$TravelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckList _$CheckListFromJson(Map<String, dynamic> json) {
  return _CheckList.fromJson(json);
}

/// @nodoc
mixin _$CheckList {
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckListCopyWith<CheckList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckListCopyWith<$Res> {
  factory $CheckListCopyWith(CheckList value, $Res Function(CheckList) then) =
      _$CheckListCopyWithImpl<$Res, CheckList>;
  @useResult
  $Res call({String name, String status});
}

/// @nodoc
class _$CheckListCopyWithImpl<$Res, $Val extends CheckList>
    implements $CheckListCopyWith<$Res> {
  _$CheckListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckListImplCopyWith<$Res>
    implements $CheckListCopyWith<$Res> {
  factory _$$CheckListImplCopyWith(
          _$CheckListImpl value, $Res Function(_$CheckListImpl) then) =
      __$$CheckListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String status});
}

/// @nodoc
class __$$CheckListImplCopyWithImpl<$Res>
    extends _$CheckListCopyWithImpl<$Res, _$CheckListImpl>
    implements _$$CheckListImplCopyWith<$Res> {
  __$$CheckListImplCopyWithImpl(
      _$CheckListImpl _value, $Res Function(_$CheckListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_$CheckListImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CheckListImpl implements _CheckList {
  _$CheckListImpl({required this.name, required this.status});

  factory _$CheckListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckListImplFromJson(json);

  @override
  final String name;
  @override
  final String status;

  @override
  String toString() {
    return 'CheckList(name: $name, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckListImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckListImplCopyWith<_$CheckListImpl> get copyWith =>
      __$$CheckListImplCopyWithImpl<_$CheckListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckListImplToJson(
      this,
    );
  }
}

abstract class _CheckList implements CheckList {
  factory _CheckList(
      {required final String name,
      required final String status}) = _$CheckListImpl;

  factory _CheckList.fromJson(Map<String, dynamic> json) =
      _$CheckListImpl.fromJson;

  @override
  String get name;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$CheckListImplCopyWith<_$CheckListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
