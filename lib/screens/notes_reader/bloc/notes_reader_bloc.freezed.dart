// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_reader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesReaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationNotes locationNotes) rebuild,
    required TResult Function() closeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationNotes locationNotes)? rebuild,
    TResult? Function()? closeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationNotes locationNotes)? rebuild,
    TResult Function()? closeScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Rebuild value) rebuild,
    required TResult Function(_CloseScreen value) closeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Rebuild value)? rebuild,
    TResult? Function(_CloseScreen value)? closeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Rebuild value)? rebuild,
    TResult Function(_CloseScreen value)? closeScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesReaderEventCopyWith<$Res> {
  factory $NotesReaderEventCopyWith(
          NotesReaderEvent value, $Res Function(NotesReaderEvent) then) =
      _$NotesReaderEventCopyWithImpl<$Res, NotesReaderEvent>;
}

/// @nodoc
class _$NotesReaderEventCopyWithImpl<$Res, $Val extends NotesReaderEvent>
    implements $NotesReaderEventCopyWith<$Res> {
  _$NotesReaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RebuildImplCopyWith<$Res> {
  factory _$$RebuildImplCopyWith(
          _$RebuildImpl value, $Res Function(_$RebuildImpl) then) =
      __$$RebuildImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationNotes locationNotes});

  $LocationNotesCopyWith<$Res> get locationNotes;
}

/// @nodoc
class __$$RebuildImplCopyWithImpl<$Res>
    extends _$NotesReaderEventCopyWithImpl<$Res, _$RebuildImpl>
    implements _$$RebuildImplCopyWith<$Res> {
  __$$RebuildImplCopyWithImpl(
      _$RebuildImpl _value, $Res Function(_$RebuildImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationNotes = null,
  }) {
    return _then(_$RebuildImpl(
      locationNotes: null == locationNotes
          ? _value.locationNotes
          : locationNotes // ignore: cast_nullable_to_non_nullable
              as LocationNotes,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationNotesCopyWith<$Res> get locationNotes {
    return $LocationNotesCopyWith<$Res>(_value.locationNotes, (value) {
      return _then(_value.copyWith(locationNotes: value));
    });
  }
}

/// @nodoc

class _$RebuildImpl implements _Rebuild {
  const _$RebuildImpl({required this.locationNotes});

  @override
  final LocationNotes locationNotes;

  @override
  String toString() {
    return 'NotesReaderEvent.rebuild(locationNotes: $locationNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RebuildImpl &&
            (identical(other.locationNotes, locationNotes) ||
                other.locationNotes == locationNotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationNotes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RebuildImplCopyWith<_$RebuildImpl> get copyWith =>
      __$$RebuildImplCopyWithImpl<_$RebuildImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationNotes locationNotes) rebuild,
    required TResult Function() closeScreen,
  }) {
    return rebuild(locationNotes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationNotes locationNotes)? rebuild,
    TResult? Function()? closeScreen,
  }) {
    return rebuild?.call(locationNotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationNotes locationNotes)? rebuild,
    TResult Function()? closeScreen,
    required TResult orElse(),
  }) {
    if (rebuild != null) {
      return rebuild(locationNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Rebuild value) rebuild,
    required TResult Function(_CloseScreen value) closeScreen,
  }) {
    return rebuild(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Rebuild value)? rebuild,
    TResult? Function(_CloseScreen value)? closeScreen,
  }) {
    return rebuild?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Rebuild value)? rebuild,
    TResult Function(_CloseScreen value)? closeScreen,
    required TResult orElse(),
  }) {
    if (rebuild != null) {
      return rebuild(this);
    }
    return orElse();
  }
}

abstract class _Rebuild implements NotesReaderEvent {
  const factory _Rebuild({required final LocationNotes locationNotes}) =
      _$RebuildImpl;

  LocationNotes get locationNotes;
  @JsonKey(ignore: true)
  _$$RebuildImplCopyWith<_$RebuildImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CloseScreenImplCopyWith<$Res> {
  factory _$$CloseScreenImplCopyWith(
          _$CloseScreenImpl value, $Res Function(_$CloseScreenImpl) then) =
      __$$CloseScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseScreenImplCopyWithImpl<$Res>
    extends _$NotesReaderEventCopyWithImpl<$Res, _$CloseScreenImpl>
    implements _$$CloseScreenImplCopyWith<$Res> {
  __$$CloseScreenImplCopyWithImpl(
      _$CloseScreenImpl _value, $Res Function(_$CloseScreenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseScreenImpl implements _CloseScreen {
  const _$CloseScreenImpl();

  @override
  String toString() {
    return 'NotesReaderEvent.closeScreen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseScreenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationNotes locationNotes) rebuild,
    required TResult Function() closeScreen,
  }) {
    return closeScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocationNotes locationNotes)? rebuild,
    TResult? Function()? closeScreen,
  }) {
    return closeScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationNotes locationNotes)? rebuild,
    TResult Function()? closeScreen,
    required TResult orElse(),
  }) {
    if (closeScreen != null) {
      return closeScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Rebuild value) rebuild,
    required TResult Function(_CloseScreen value) closeScreen,
  }) {
    return closeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Rebuild value)? rebuild,
    TResult? Function(_CloseScreen value)? closeScreen,
  }) {
    return closeScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Rebuild value)? rebuild,
    TResult Function(_CloseScreen value)? closeScreen,
    required TResult orElse(),
  }) {
    if (closeScreen != null) {
      return closeScreen(this);
    }
    return orElse();
  }
}

abstract class _CloseScreen implements NotesReaderEvent {
  const factory _CloseScreen() = _$CloseScreenImpl;
}

/// @nodoc
mixin _$NotesReaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationNotes locationNotes) ready,
    required TResult Function() close,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationNotes locationNotes)? ready,
    TResult? Function()? close,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationNotes locationNotes)? ready,
    TResult Function()? close,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Close value) close,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Close value)? close,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Close value)? close,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesReaderStateCopyWith<$Res> {
  factory $NotesReaderStateCopyWith(
          NotesReaderState value, $Res Function(NotesReaderState) then) =
      _$NotesReaderStateCopyWithImpl<$Res, NotesReaderState>;
}

/// @nodoc
class _$NotesReaderStateCopyWithImpl<$Res, $Val extends NotesReaderState>
    implements $NotesReaderStateCopyWith<$Res> {
  _$NotesReaderStateCopyWithImpl(this._value, this._then);

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
    extends _$NotesReaderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NotesReaderState.initial()';
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
    required TResult Function(LocationNotes locationNotes) ready,
    required TResult Function() close,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationNotes locationNotes)? ready,
    TResult? Function()? close,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationNotes locationNotes)? ready,
    TResult Function()? close,
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
    required TResult Function(_Close value) close,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Close value)? close,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Close value)? close,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotesReaderState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationNotes locationNotes});

  $LocationNotesCopyWith<$Res> get locationNotes;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$NotesReaderStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationNotes = null,
  }) {
    return _then(_$ReadyImpl(
      locationNotes: null == locationNotes
          ? _value.locationNotes
          : locationNotes // ignore: cast_nullable_to_non_nullable
              as LocationNotes,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationNotesCopyWith<$Res> get locationNotes {
    return $LocationNotesCopyWith<$Res>(_value.locationNotes, (value) {
      return _then(_value.copyWith(locationNotes: value));
    });
  }
}

/// @nodoc

class _$ReadyImpl implements _Ready {
  const _$ReadyImpl({required this.locationNotes});

  @override
  final LocationNotes locationNotes;

  @override
  String toString() {
    return 'NotesReaderState.ready(locationNotes: $locationNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.locationNotes, locationNotes) ||
                other.locationNotes == locationNotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationNotes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationNotes locationNotes) ready,
    required TResult Function() close,
    required TResult Function(String message) error,
  }) {
    return ready(locationNotes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationNotes locationNotes)? ready,
    TResult? Function()? close,
    TResult? Function(String message)? error,
  }) {
    return ready?.call(locationNotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationNotes locationNotes)? ready,
    TResult Function()? close,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(locationNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Close value) close,
    required TResult Function(_Error value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Close value)? close,
    TResult? Function(_Error value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Close value)? close,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements NotesReaderState {
  const factory _Ready({required final LocationNotes locationNotes}) =
      _$ReadyImpl;

  LocationNotes get locationNotes;
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CloseImplCopyWith<$Res> {
  factory _$$CloseImplCopyWith(
          _$CloseImpl value, $Res Function(_$CloseImpl) then) =
      __$$CloseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseImplCopyWithImpl<$Res>
    extends _$NotesReaderStateCopyWithImpl<$Res, _$CloseImpl>
    implements _$$CloseImplCopyWith<$Res> {
  __$$CloseImplCopyWithImpl(
      _$CloseImpl _value, $Res Function(_$CloseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseImpl implements _Close {
  const _$CloseImpl();

  @override
  String toString() {
    return 'NotesReaderState.close()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocationNotes locationNotes) ready,
    required TResult Function() close,
    required TResult Function(String message) error,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationNotes locationNotes)? ready,
    TResult? Function()? close,
    TResult? Function(String message)? error,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationNotes locationNotes)? ready,
    TResult Function()? close,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Close value) close,
    required TResult Function(_Error value) error,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Close value)? close,
    TResult? Function(_Error value)? error,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Close value)? close,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class _Close implements NotesReaderState {
  const factory _Close() = _$CloseImpl;
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
    extends _$NotesReaderStateCopyWithImpl<$Res, _$ErrorImpl>
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

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'NotesReaderState.error(message: $message)';
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
    required TResult Function(LocationNotes locationNotes) ready,
    required TResult Function() close,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(LocationNotes locationNotes)? ready,
    TResult? Function()? close,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocationNotes locationNotes)? ready,
    TResult Function()? close,
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
    required TResult Function(_Close value) close,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Close value)? close,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Close value)? close,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NotesReaderState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
