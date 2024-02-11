// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_travel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateTravelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCheckList,
    required TResult Function(int index) removeCheckList,
    required TResult Function(DateTime date) updateTravelDate,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? addCheckList,
    TResult? Function(int index)? removeCheckList,
    TResult? Function(DateTime date)? updateTravelDate,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCheckList,
    TResult Function(int index)? removeCheckList,
    TResult Function(DateTime date)? updateTravelDate,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckList value) addCheckList,
    required TResult Function(_RemoveCheckList value) removeCheckList,
    required TResult Function(_UpdateTravelDate value) updateTravelDate,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckList value)? addCheckList,
    TResult? Function(_RemoveCheckList value)? removeCheckList,
    TResult? Function(_UpdateTravelDate value)? updateTravelDate,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckList value)? addCheckList,
    TResult Function(_RemoveCheckList value)? removeCheckList,
    TResult Function(_UpdateTravelDate value)? updateTravelDate,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTravelEventCopyWith<$Res> {
  factory $CreateTravelEventCopyWith(
          CreateTravelEvent value, $Res Function(CreateTravelEvent) then) =
      _$CreateTravelEventCopyWithImpl<$Res, CreateTravelEvent>;
}

/// @nodoc
class _$CreateTravelEventCopyWithImpl<$Res, $Val extends CreateTravelEvent>
    implements $CreateTravelEventCopyWith<$Res> {
  _$CreateTravelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CreateTravelEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateTravelEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CreateTravelEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCheckList,
    required TResult Function(int index) removeCheckList,
    required TResult Function(DateTime date) updateTravelDate,
    required TResult Function() save,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? addCheckList,
    TResult? Function(int index)? removeCheckList,
    TResult? Function(DateTime date)? updateTravelDate,
    TResult? Function()? save,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCheckList,
    TResult Function(int index)? removeCheckList,
    TResult Function(DateTime date)? updateTravelDate,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckList value) addCheckList,
    required TResult Function(_RemoveCheckList value) removeCheckList,
    required TResult Function(_UpdateTravelDate value) updateTravelDate,
    required TResult Function(_Save value) save,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckList value)? addCheckList,
    TResult? Function(_RemoveCheckList value)? removeCheckList,
    TResult? Function(_UpdateTravelDate value)? updateTravelDate,
    TResult? Function(_Save value)? save,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckList value)? addCheckList,
    TResult Function(_RemoveCheckList value)? removeCheckList,
    TResult Function(_UpdateTravelDate value)? updateTravelDate,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateTravelEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddCheckListImplCopyWith<$Res> {
  factory _$$AddCheckListImplCopyWith(
          _$AddCheckListImpl value, $Res Function(_$AddCheckListImpl) then) =
      __$$AddCheckListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCheckListImplCopyWithImpl<$Res>
    extends _$CreateTravelEventCopyWithImpl<$Res, _$AddCheckListImpl>
    implements _$$AddCheckListImplCopyWith<$Res> {
  __$$AddCheckListImplCopyWithImpl(
      _$AddCheckListImpl _value, $Res Function(_$AddCheckListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddCheckListImpl with DiagnosticableTreeMixin implements _AddCheckList {
  const _$AddCheckListImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateTravelEvent.addCheckList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CreateTravelEvent.addCheckList'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddCheckListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCheckList,
    required TResult Function(int index) removeCheckList,
    required TResult Function(DateTime date) updateTravelDate,
    required TResult Function() save,
  }) {
    return addCheckList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? addCheckList,
    TResult? Function(int index)? removeCheckList,
    TResult? Function(DateTime date)? updateTravelDate,
    TResult? Function()? save,
  }) {
    return addCheckList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCheckList,
    TResult Function(int index)? removeCheckList,
    TResult Function(DateTime date)? updateTravelDate,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (addCheckList != null) {
      return addCheckList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckList value) addCheckList,
    required TResult Function(_RemoveCheckList value) removeCheckList,
    required TResult Function(_UpdateTravelDate value) updateTravelDate,
    required TResult Function(_Save value) save,
  }) {
    return addCheckList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckList value)? addCheckList,
    TResult? Function(_RemoveCheckList value)? removeCheckList,
    TResult? Function(_UpdateTravelDate value)? updateTravelDate,
    TResult? Function(_Save value)? save,
  }) {
    return addCheckList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckList value)? addCheckList,
    TResult Function(_RemoveCheckList value)? removeCheckList,
    TResult Function(_UpdateTravelDate value)? updateTravelDate,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (addCheckList != null) {
      return addCheckList(this);
    }
    return orElse();
  }
}

abstract class _AddCheckList implements CreateTravelEvent {
  const factory _AddCheckList() = _$AddCheckListImpl;
}

/// @nodoc
abstract class _$$RemoveCheckListImplCopyWith<$Res> {
  factory _$$RemoveCheckListImplCopyWith(_$RemoveCheckListImpl value,
          $Res Function(_$RemoveCheckListImpl) then) =
      __$$RemoveCheckListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveCheckListImplCopyWithImpl<$Res>
    extends _$CreateTravelEventCopyWithImpl<$Res, _$RemoveCheckListImpl>
    implements _$$RemoveCheckListImplCopyWith<$Res> {
  __$$RemoveCheckListImplCopyWithImpl(
      _$RemoveCheckListImpl _value, $Res Function(_$RemoveCheckListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveCheckListImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveCheckListImpl
    with DiagnosticableTreeMixin
    implements _RemoveCheckList {
  const _$RemoveCheckListImpl({required this.index});

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateTravelEvent.removeCheckList(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateTravelEvent.removeCheckList'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCheckListImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCheckListImplCopyWith<_$RemoveCheckListImpl> get copyWith =>
      __$$RemoveCheckListImplCopyWithImpl<_$RemoveCheckListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCheckList,
    required TResult Function(int index) removeCheckList,
    required TResult Function(DateTime date) updateTravelDate,
    required TResult Function() save,
  }) {
    return removeCheckList(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? addCheckList,
    TResult? Function(int index)? removeCheckList,
    TResult? Function(DateTime date)? updateTravelDate,
    TResult? Function()? save,
  }) {
    return removeCheckList?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCheckList,
    TResult Function(int index)? removeCheckList,
    TResult Function(DateTime date)? updateTravelDate,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (removeCheckList != null) {
      return removeCheckList(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckList value) addCheckList,
    required TResult Function(_RemoveCheckList value) removeCheckList,
    required TResult Function(_UpdateTravelDate value) updateTravelDate,
    required TResult Function(_Save value) save,
  }) {
    return removeCheckList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckList value)? addCheckList,
    TResult? Function(_RemoveCheckList value)? removeCheckList,
    TResult? Function(_UpdateTravelDate value)? updateTravelDate,
    TResult? Function(_Save value)? save,
  }) {
    return removeCheckList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckList value)? addCheckList,
    TResult Function(_RemoveCheckList value)? removeCheckList,
    TResult Function(_UpdateTravelDate value)? updateTravelDate,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (removeCheckList != null) {
      return removeCheckList(this);
    }
    return orElse();
  }
}

abstract class _RemoveCheckList implements CreateTravelEvent {
  const factory _RemoveCheckList({required final int index}) =
      _$RemoveCheckListImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveCheckListImplCopyWith<_$RemoveCheckListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTravelDateImplCopyWith<$Res> {
  factory _$$UpdateTravelDateImplCopyWith(_$UpdateTravelDateImpl value,
          $Res Function(_$UpdateTravelDateImpl) then) =
      __$$UpdateTravelDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$UpdateTravelDateImplCopyWithImpl<$Res>
    extends _$CreateTravelEventCopyWithImpl<$Res, _$UpdateTravelDateImpl>
    implements _$$UpdateTravelDateImplCopyWith<$Res> {
  __$$UpdateTravelDateImplCopyWithImpl(_$UpdateTravelDateImpl _value,
      $Res Function(_$UpdateTravelDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$UpdateTravelDateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateTravelDateImpl
    with DiagnosticableTreeMixin
    implements _UpdateTravelDate {
  const _$UpdateTravelDateImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateTravelEvent.updateTravelDate(date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateTravelEvent.updateTravelDate'))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTravelDateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTravelDateImplCopyWith<_$UpdateTravelDateImpl> get copyWith =>
      __$$UpdateTravelDateImplCopyWithImpl<_$UpdateTravelDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCheckList,
    required TResult Function(int index) removeCheckList,
    required TResult Function(DateTime date) updateTravelDate,
    required TResult Function() save,
  }) {
    return updateTravelDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? addCheckList,
    TResult? Function(int index)? removeCheckList,
    TResult? Function(DateTime date)? updateTravelDate,
    TResult? Function()? save,
  }) {
    return updateTravelDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCheckList,
    TResult Function(int index)? removeCheckList,
    TResult Function(DateTime date)? updateTravelDate,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (updateTravelDate != null) {
      return updateTravelDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckList value) addCheckList,
    required TResult Function(_RemoveCheckList value) removeCheckList,
    required TResult Function(_UpdateTravelDate value) updateTravelDate,
    required TResult Function(_Save value) save,
  }) {
    return updateTravelDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckList value)? addCheckList,
    TResult? Function(_RemoveCheckList value)? removeCheckList,
    TResult? Function(_UpdateTravelDate value)? updateTravelDate,
    TResult? Function(_Save value)? save,
  }) {
    return updateTravelDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckList value)? addCheckList,
    TResult Function(_RemoveCheckList value)? removeCheckList,
    TResult Function(_UpdateTravelDate value)? updateTravelDate,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (updateTravelDate != null) {
      return updateTravelDate(this);
    }
    return orElse();
  }
}

abstract class _UpdateTravelDate implements CreateTravelEvent {
  const factory _UpdateTravelDate({required final DateTime date}) =
      _$UpdateTravelDateImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$UpdateTravelDateImplCopyWith<_$UpdateTravelDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveImplCopyWith<$Res> {
  factory _$$SaveImplCopyWith(
          _$SaveImpl value, $Res Function(_$SaveImpl) then) =
      __$$SaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveImplCopyWithImpl<$Res>
    extends _$CreateTravelEventCopyWithImpl<$Res, _$SaveImpl>
    implements _$$SaveImplCopyWith<$Res> {
  __$$SaveImplCopyWithImpl(_$SaveImpl _value, $Res Function(_$SaveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveImpl with DiagnosticableTreeMixin implements _Save {
  const _$SaveImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateTravelEvent.save()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CreateTravelEvent.save'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCheckList,
    required TResult Function(int index) removeCheckList,
    required TResult Function(DateTime date) updateTravelDate,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? addCheckList,
    TResult? Function(int index)? removeCheckList,
    TResult? Function(DateTime date)? updateTravelDate,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCheckList,
    TResult Function(int index)? removeCheckList,
    TResult Function(DateTime date)? updateTravelDate,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckList value) addCheckList,
    required TResult Function(_RemoveCheckList value) removeCheckList,
    required TResult Function(_UpdateTravelDate value) updateTravelDate,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckList value)? addCheckList,
    TResult? Function(_RemoveCheckList value)? removeCheckList,
    TResult? Function(_UpdateTravelDate value)? updateTravelDate,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckList value)? addCheckList,
    TResult Function(_RemoveCheckList value)? removeCheckList,
    TResult Function(_UpdateTravelDate value)? updateTravelDate,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements CreateTravelEvent {
  const factory _Save() = _$SaveImpl;
}

/// @nodoc
mixin _$CreateTravelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TextEditingController travelNameController,
            TextEditingController travellingToController,
            TextEditingController destinationController,
            TextEditingController latController,
            TextEditingController lngController,
            List<TextEditingController> checkListControllers,
            List<FocusNode> focusNodes,
            TravelLocation currentLocation,
            DateTime travelDate,
            OSLocation destination,
            SaveState saveState)
        ready,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TextEditingController travelNameController,
            TextEditingController travellingToController,
            TextEditingController destinationController,
            TextEditingController latController,
            TextEditingController lngController,
            List<TextEditingController> checkListControllers,
            List<FocusNode> focusNodes,
            TravelLocation currentLocation,
            DateTime travelDate,
            OSLocation destination,
            SaveState saveState)?
        ready,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TextEditingController travelNameController,
            TextEditingController travellingToController,
            TextEditingController destinationController,
            TextEditingController latController,
            TextEditingController lngController,
            List<TextEditingController> checkListControllers,
            List<FocusNode> focusNodes,
            TravelLocation currentLocation,
            DateTime travelDate,
            OSLocation destination,
            SaveState saveState)?
        ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTravelStateCopyWith<$Res> {
  factory $CreateTravelStateCopyWith(
          CreateTravelState value, $Res Function(CreateTravelState) then) =
      _$CreateTravelStateCopyWithImpl<$Res, CreateTravelState>;
}

/// @nodoc
class _$CreateTravelStateCopyWithImpl<$Res, $Val extends CreateTravelState>
    implements $CreateTravelStateCopyWith<$Res> {
  _$CreateTravelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreateTravelStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateTravelState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CreateTravelState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TextEditingController travelNameController,
            TextEditingController travellingToController,
            TextEditingController destinationController,
            TextEditingController latController,
            TextEditingController lngController,
            List<TextEditingController> checkListControllers,
            List<FocusNode> focusNodes,
            TravelLocation currentLocation,
            DateTime travelDate,
            OSLocation destination,
            SaveState saveState)
        ready,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TextEditingController travelNameController,
            TextEditingController travellingToController,
            TextEditingController destinationController,
            TextEditingController latController,
            TextEditingController lngController,
            List<TextEditingController> checkListControllers,
            List<FocusNode> focusNodes,
            TravelLocation currentLocation,
            DateTime travelDate,
            OSLocation destination,
            SaveState saveState)?
        ready,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TextEditingController travelNameController,
            TextEditingController travellingToController,
            TextEditingController destinationController,
            TextEditingController latController,
            TextEditingController lngController,
            List<TextEditingController> checkListControllers,
            List<FocusNode> focusNodes,
            TravelLocation currentLocation,
            DateTime travelDate,
            OSLocation destination,
            SaveState saveState)?
        ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateTravelState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TextEditingController travelNameController,
      TextEditingController travellingToController,
      TextEditingController destinationController,
      TextEditingController latController,
      TextEditingController lngController,
      List<TextEditingController> checkListControllers,
      List<FocusNode> focusNodes,
      TravelLocation currentLocation,
      DateTime travelDate,
      OSLocation destination,
      SaveState saveState});

  $OSLocationCopyWith<$Res> get destination;
  $SaveStateCopyWith<$Res> get saveState;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$CreateTravelStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travelNameController = null,
    Object? travellingToController = null,
    Object? destinationController = null,
    Object? latController = null,
    Object? lngController = null,
    Object? checkListControllers = null,
    Object? focusNodes = null,
    Object? currentLocation = null,
    Object? travelDate = null,
    Object? destination = null,
    Object? saveState = null,
  }) {
    return _then(_$ReadyImpl(
      travelNameController: null == travelNameController
          ? _value.travelNameController
          : travelNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      travellingToController: null == travellingToController
          ? _value.travellingToController
          : travellingToController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      destinationController: null == destinationController
          ? _value.destinationController
          : destinationController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      latController: null == latController
          ? _value.latController
          : latController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      lngController: null == lngController
          ? _value.lngController
          : lngController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      checkListControllers: null == checkListControllers
          ? _value._checkListControllers
          : checkListControllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
      focusNodes: null == focusNodes
          ? _value._focusNodes
          : focusNodes // ignore: cast_nullable_to_non_nullable
              as List<FocusNode>,
      currentLocation: null == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as TravelLocation,
      travelDate: null == travelDate
          ? _value.travelDate
          : travelDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as OSLocation,
      saveState: null == saveState
          ? _value.saveState
          : saveState // ignore: cast_nullable_to_non_nullable
              as SaveState,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OSLocationCopyWith<$Res> get destination {
    return $OSLocationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SaveStateCopyWith<$Res> get saveState {
    return $SaveStateCopyWith<$Res>(_value.saveState, (value) {
      return _then(_value.copyWith(saveState: value));
    });
  }
}

/// @nodoc

class _$ReadyImpl with DiagnosticableTreeMixin implements _Ready {
  const _$ReadyImpl(
      {required this.travelNameController,
      required this.travellingToController,
      required this.destinationController,
      required this.latController,
      required this.lngController,
      required final List<TextEditingController> checkListControllers,
      required final List<FocusNode> focusNodes,
      required this.currentLocation,
      required this.travelDate,
      required this.destination,
      this.saveState = const SaveState.idle()})
      : _checkListControllers = checkListControllers,
        _focusNodes = focusNodes;

  @override
  final TextEditingController travelNameController;
  @override
  final TextEditingController travellingToController;
  @override
  final TextEditingController destinationController;
  @override
  final TextEditingController latController;
  @override
  final TextEditingController lngController;
  final List<TextEditingController> _checkListControllers;
  @override
  List<TextEditingController> get checkListControllers {
    if (_checkListControllers is EqualUnmodifiableListView)
      return _checkListControllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_checkListControllers);
  }

  final List<FocusNode> _focusNodes;
  @override
  List<FocusNode> get focusNodes {
    if (_focusNodes is EqualUnmodifiableListView) return _focusNodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_focusNodes);
  }

  @override
  final TravelLocation currentLocation;
  @override
  final DateTime travelDate;
  @override
  final OSLocation destination;
  @override
  @JsonKey()
  final SaveState saveState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateTravelState.ready(travelNameController: $travelNameController, travellingToController: $travellingToController, destinationController: $destinationController, latController: $latController, lngController: $lngController, checkListControllers: $checkListControllers, focusNodes: $focusNodes, currentLocation: $currentLocation, travelDate: $travelDate, destination: $destination, saveState: $saveState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateTravelState.ready'))
      ..add(DiagnosticsProperty('travelNameController', travelNameController))
      ..add(
          DiagnosticsProperty('travellingToController', travellingToController))
      ..add(DiagnosticsProperty('destinationController', destinationController))
      ..add(DiagnosticsProperty('latController', latController))
      ..add(DiagnosticsProperty('lngController', lngController))
      ..add(DiagnosticsProperty('checkListControllers', checkListControllers))
      ..add(DiagnosticsProperty('focusNodes', focusNodes))
      ..add(DiagnosticsProperty('currentLocation', currentLocation))
      ..add(DiagnosticsProperty('travelDate', travelDate))
      ..add(DiagnosticsProperty('destination', destination))
      ..add(DiagnosticsProperty('saveState', saveState));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.travelNameController, travelNameController) ||
                other.travelNameController == travelNameController) &&
            (identical(other.travellingToController, travellingToController) ||
                other.travellingToController == travellingToController) &&
            (identical(other.destinationController, destinationController) ||
                other.destinationController == destinationController) &&
            (identical(other.latController, latController) ||
                other.latController == latController) &&
            (identical(other.lngController, lngController) ||
                other.lngController == lngController) &&
            const DeepCollectionEquality()
                .equals(other._checkListControllers, _checkListControllers) &&
            const DeepCollectionEquality()
                .equals(other._focusNodes, _focusNodes) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.travelDate, travelDate) ||
                other.travelDate == travelDate) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.saveState, saveState) ||
                other.saveState == saveState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      travelNameController,
      travellingToController,
      destinationController,
      latController,
      lngController,
      const DeepCollectionEquality().hash(_checkListControllers),
      const DeepCollectionEquality().hash(_focusNodes),
      currentLocation,
      travelDate,
      destination,
      saveState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TextEditingController travelNameController,
            TextEditingController travellingToController,
            TextEditingController destinationController,
            TextEditingController latController,
            TextEditingController lngController,
            List<TextEditingController> checkListControllers,
            List<FocusNode> focusNodes,
            TravelLocation currentLocation,
            DateTime travelDate,
            OSLocation destination,
            SaveState saveState)
        ready,
    required TResult Function(String message) error,
  }) {
    return ready(
        travelNameController,
        travellingToController,
        destinationController,
        latController,
        lngController,
        checkListControllers,
        focusNodes,
        currentLocation,
        travelDate,
        destination,
        saveState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TextEditingController travelNameController,
            TextEditingController travellingToController,
            TextEditingController destinationController,
            TextEditingController latController,
            TextEditingController lngController,
            List<TextEditingController> checkListControllers,
            List<FocusNode> focusNodes,
            TravelLocation currentLocation,
            DateTime travelDate,
            OSLocation destination,
            SaveState saveState)?
        ready,
    TResult? Function(String message)? error,
  }) {
    return ready?.call(
        travelNameController,
        travellingToController,
        destinationController,
        latController,
        lngController,
        checkListControllers,
        focusNodes,
        currentLocation,
        travelDate,
        destination,
        saveState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TextEditingController travelNameController,
            TextEditingController travellingToController,
            TextEditingController destinationController,
            TextEditingController latController,
            TextEditingController lngController,
            List<TextEditingController> checkListControllers,
            List<FocusNode> focusNodes,
            TravelLocation currentLocation,
            DateTime travelDate,
            OSLocation destination,
            SaveState saveState)?
        ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(
          travelNameController,
          travellingToController,
          destinationController,
          latController,
          lngController,
          checkListControllers,
          focusNodes,
          currentLocation,
          travelDate,
          destination,
          saveState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements CreateTravelState {
  const factory _Ready(
      {required final TextEditingController travelNameController,
      required final TextEditingController travellingToController,
      required final TextEditingController destinationController,
      required final TextEditingController latController,
      required final TextEditingController lngController,
      required final List<TextEditingController> checkListControllers,
      required final List<FocusNode> focusNodes,
      required final TravelLocation currentLocation,
      required final DateTime travelDate,
      required final OSLocation destination,
      final SaveState saveState}) = _$ReadyImpl;

  TextEditingController get travelNameController;
  TextEditingController get travellingToController;
  TextEditingController get destinationController;
  TextEditingController get latController;
  TextEditingController get lngController;
  List<TextEditingController> get checkListControllers;
  List<FocusNode> get focusNodes;
  TravelLocation get currentLocation;
  DateTime get travelDate;
  OSLocation get destination;
  SaveState get saveState;
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CreateTravelStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreateTravelState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreateTravelState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            TextEditingController travelNameController,
            TextEditingController travellingToController,
            TextEditingController destinationController,
            TextEditingController latController,
            TextEditingController lngController,
            List<TextEditingController> checkListControllers,
            List<FocusNode> focusNodes,
            TravelLocation currentLocation,
            DateTime travelDate,
            OSLocation destination,
            SaveState saveState)
        ready,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            TextEditingController travelNameController,
            TextEditingController travellingToController,
            TextEditingController destinationController,
            TextEditingController latController,
            TextEditingController lngController,
            List<TextEditingController> checkListControllers,
            List<FocusNode> focusNodes,
            TravelLocation currentLocation,
            DateTime travelDate,
            OSLocation destination,
            SaveState saveState)?
        ready,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            TextEditingController travelNameController,
            TextEditingController travellingToController,
            TextEditingController destinationController,
            TextEditingController latController,
            TextEditingController lngController,
            List<TextEditingController> checkListControllers,
            List<FocusNode> focusNodes,
            TravelLocation currentLocation,
            DateTime travelDate,
            OSLocation destination,
            SaveState saveState)?
        ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CreateTravelState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
