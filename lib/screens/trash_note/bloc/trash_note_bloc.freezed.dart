// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trash_note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrashNoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() trashNote,
    required TResult Function() cancelTrashRequest,
    required TResult Function() requestTrash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? trashNote,
    TResult? Function()? cancelTrashRequest,
    TResult? Function()? requestTrash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? trashNote,
    TResult Function()? cancelTrashRequest,
    TResult Function()? requestTrash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TrashNote value) trashNote,
    required TResult Function(_CancelTrashRequest value) cancelTrashRequest,
    required TResult Function(_RequestTrash value) requestTrash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TrashNote value)? trashNote,
    TResult? Function(_CancelTrashRequest value)? cancelTrashRequest,
    TResult? Function(_RequestTrash value)? requestTrash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TrashNote value)? trashNote,
    TResult Function(_CancelTrashRequest value)? cancelTrashRequest,
    TResult Function(_RequestTrash value)? requestTrash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrashNoteEventCopyWith<$Res> {
  factory $TrashNoteEventCopyWith(
          TrashNoteEvent value, $Res Function(TrashNoteEvent) then) =
      _$TrashNoteEventCopyWithImpl<$Res, TrashNoteEvent>;
}

/// @nodoc
class _$TrashNoteEventCopyWithImpl<$Res, $Val extends TrashNoteEvent>
    implements $TrashNoteEventCopyWith<$Res> {
  _$TrashNoteEventCopyWithImpl(this._value, this._then);

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
    extends _$TrashNoteEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TrashNoteEvent.started()';
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
    required TResult Function() trashNote,
    required TResult Function() cancelTrashRequest,
    required TResult Function() requestTrash,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? trashNote,
    TResult? Function()? cancelTrashRequest,
    TResult? Function()? requestTrash,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? trashNote,
    TResult Function()? cancelTrashRequest,
    TResult Function()? requestTrash,
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
    required TResult Function(_TrashNote value) trashNote,
    required TResult Function(_CancelTrashRequest value) cancelTrashRequest,
    required TResult Function(_RequestTrash value) requestTrash,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TrashNote value)? trashNote,
    TResult? Function(_CancelTrashRequest value)? cancelTrashRequest,
    TResult? Function(_RequestTrash value)? requestTrash,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TrashNote value)? trashNote,
    TResult Function(_CancelTrashRequest value)? cancelTrashRequest,
    TResult Function(_RequestTrash value)? requestTrash,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TrashNoteEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$TrashNoteImplCopyWith<$Res> {
  factory _$$TrashNoteImplCopyWith(
          _$TrashNoteImpl value, $Res Function(_$TrashNoteImpl) then) =
      __$$TrashNoteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrashNoteImplCopyWithImpl<$Res>
    extends _$TrashNoteEventCopyWithImpl<$Res, _$TrashNoteImpl>
    implements _$$TrashNoteImplCopyWith<$Res> {
  __$$TrashNoteImplCopyWithImpl(
      _$TrashNoteImpl _value, $Res Function(_$TrashNoteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TrashNoteImpl implements _TrashNote {
  const _$TrashNoteImpl();

  @override
  String toString() {
    return 'TrashNoteEvent.trashNote()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TrashNoteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() trashNote,
    required TResult Function() cancelTrashRequest,
    required TResult Function() requestTrash,
  }) {
    return trashNote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? trashNote,
    TResult? Function()? cancelTrashRequest,
    TResult? Function()? requestTrash,
  }) {
    return trashNote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? trashNote,
    TResult Function()? cancelTrashRequest,
    TResult Function()? requestTrash,
    required TResult orElse(),
  }) {
    if (trashNote != null) {
      return trashNote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TrashNote value) trashNote,
    required TResult Function(_CancelTrashRequest value) cancelTrashRequest,
    required TResult Function(_RequestTrash value) requestTrash,
  }) {
    return trashNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TrashNote value)? trashNote,
    TResult? Function(_CancelTrashRequest value)? cancelTrashRequest,
    TResult? Function(_RequestTrash value)? requestTrash,
  }) {
    return trashNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TrashNote value)? trashNote,
    TResult Function(_CancelTrashRequest value)? cancelTrashRequest,
    TResult Function(_RequestTrash value)? requestTrash,
    required TResult orElse(),
  }) {
    if (trashNote != null) {
      return trashNote(this);
    }
    return orElse();
  }
}

abstract class _TrashNote implements TrashNoteEvent {
  const factory _TrashNote() = _$TrashNoteImpl;
}

/// @nodoc
abstract class _$$CancelTrashRequestImplCopyWith<$Res> {
  factory _$$CancelTrashRequestImplCopyWith(_$CancelTrashRequestImpl value,
          $Res Function(_$CancelTrashRequestImpl) then) =
      __$$CancelTrashRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelTrashRequestImplCopyWithImpl<$Res>
    extends _$TrashNoteEventCopyWithImpl<$Res, _$CancelTrashRequestImpl>
    implements _$$CancelTrashRequestImplCopyWith<$Res> {
  __$$CancelTrashRequestImplCopyWithImpl(_$CancelTrashRequestImpl _value,
      $Res Function(_$CancelTrashRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelTrashRequestImpl implements _CancelTrashRequest {
  const _$CancelTrashRequestImpl();

  @override
  String toString() {
    return 'TrashNoteEvent.cancelTrashRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelTrashRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() trashNote,
    required TResult Function() cancelTrashRequest,
    required TResult Function() requestTrash,
  }) {
    return cancelTrashRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? trashNote,
    TResult? Function()? cancelTrashRequest,
    TResult? Function()? requestTrash,
  }) {
    return cancelTrashRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? trashNote,
    TResult Function()? cancelTrashRequest,
    TResult Function()? requestTrash,
    required TResult orElse(),
  }) {
    if (cancelTrashRequest != null) {
      return cancelTrashRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TrashNote value) trashNote,
    required TResult Function(_CancelTrashRequest value) cancelTrashRequest,
    required TResult Function(_RequestTrash value) requestTrash,
  }) {
    return cancelTrashRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TrashNote value)? trashNote,
    TResult? Function(_CancelTrashRequest value)? cancelTrashRequest,
    TResult? Function(_RequestTrash value)? requestTrash,
  }) {
    return cancelTrashRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TrashNote value)? trashNote,
    TResult Function(_CancelTrashRequest value)? cancelTrashRequest,
    TResult Function(_RequestTrash value)? requestTrash,
    required TResult orElse(),
  }) {
    if (cancelTrashRequest != null) {
      return cancelTrashRequest(this);
    }
    return orElse();
  }
}

abstract class _CancelTrashRequest implements TrashNoteEvent {
  const factory _CancelTrashRequest() = _$CancelTrashRequestImpl;
}

/// @nodoc
abstract class _$$RequestTrashImplCopyWith<$Res> {
  factory _$$RequestTrashImplCopyWith(
          _$RequestTrashImpl value, $Res Function(_$RequestTrashImpl) then) =
      __$$RequestTrashImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestTrashImplCopyWithImpl<$Res>
    extends _$TrashNoteEventCopyWithImpl<$Res, _$RequestTrashImpl>
    implements _$$RequestTrashImplCopyWith<$Res> {
  __$$RequestTrashImplCopyWithImpl(
      _$RequestTrashImpl _value, $Res Function(_$RequestTrashImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestTrashImpl implements _RequestTrash {
  const _$RequestTrashImpl();

  @override
  String toString() {
    return 'TrashNoteEvent.requestTrash()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestTrashImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() trashNote,
    required TResult Function() cancelTrashRequest,
    required TResult Function() requestTrash,
  }) {
    return requestTrash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? trashNote,
    TResult? Function()? cancelTrashRequest,
    TResult? Function()? requestTrash,
  }) {
    return requestTrash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? trashNote,
    TResult Function()? cancelTrashRequest,
    TResult Function()? requestTrash,
    required TResult orElse(),
  }) {
    if (requestTrash != null) {
      return requestTrash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TrashNote value) trashNote,
    required TResult Function(_CancelTrashRequest value) cancelTrashRequest,
    required TResult Function(_RequestTrash value) requestTrash,
  }) {
    return requestTrash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TrashNote value)? trashNote,
    TResult? Function(_CancelTrashRequest value)? cancelTrashRequest,
    TResult? Function(_RequestTrash value)? requestTrash,
  }) {
    return requestTrash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TrashNote value)? trashNote,
    TResult Function(_CancelTrashRequest value)? cancelTrashRequest,
    TResult Function(_RequestTrash value)? requestTrash,
    required TResult orElse(),
  }) {
    if (requestTrash != null) {
      return requestTrash(this);
    }
    return orElse();
  }
}

abstract class _RequestTrash implements TrashNoteEvent {
  const factory _RequestTrash() = _$RequestTrashImpl;
}

/// @nodoc
mixin _$TrashNoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double? missedDistance, TrashNoteRequestProcess requestState)
        requestForTrash,
    required TResult Function(TrashNoteRequestProcess requestState)
        trashRequested,
    required TResult Function(
            TrashNoteRequestProcess requestState, bool isByAuthor)
        allowTrash,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            double? missedDistance, TrashNoteRequestProcess requestState)?
        requestForTrash,
    TResult? Function(TrashNoteRequestProcess requestState)? trashRequested,
    TResult? Function(TrashNoteRequestProcess requestState, bool isByAuthor)?
        allowTrash,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double? missedDistance, TrashNoteRequestProcess requestState)?
        requestForTrash,
    TResult Function(TrashNoteRequestProcess requestState)? trashRequested,
    TResult Function(TrashNoteRequestProcess requestState, bool isByAuthor)?
        allowTrash,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestForTrash value) requestForTrash,
    required TResult Function(_TrashRequested value) trashRequested,
    required TResult Function(_AllowTrash value) allowTrash,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestForTrash value)? requestForTrash,
    TResult? Function(_TrashRequested value)? trashRequested,
    TResult? Function(_AllowTrash value)? allowTrash,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestForTrash value)? requestForTrash,
    TResult Function(_TrashRequested value)? trashRequested,
    TResult Function(_AllowTrash value)? allowTrash,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrashNoteStateCopyWith<$Res> {
  factory $TrashNoteStateCopyWith(
          TrashNoteState value, $Res Function(TrashNoteState) then) =
      _$TrashNoteStateCopyWithImpl<$Res, TrashNoteState>;
}

/// @nodoc
class _$TrashNoteStateCopyWithImpl<$Res, $Val extends TrashNoteState>
    implements $TrashNoteStateCopyWith<$Res> {
  _$TrashNoteStateCopyWithImpl(this._value, this._then);

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
    extends _$TrashNoteStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TrashNoteState.initial()';
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
            double? missedDistance, TrashNoteRequestProcess requestState)
        requestForTrash,
    required TResult Function(TrashNoteRequestProcess requestState)
        trashRequested,
    required TResult Function(
            TrashNoteRequestProcess requestState, bool isByAuthor)
        allowTrash,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            double? missedDistance, TrashNoteRequestProcess requestState)?
        requestForTrash,
    TResult? Function(TrashNoteRequestProcess requestState)? trashRequested,
    TResult? Function(TrashNoteRequestProcess requestState, bool isByAuthor)?
        allowTrash,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double? missedDistance, TrashNoteRequestProcess requestState)?
        requestForTrash,
    TResult Function(TrashNoteRequestProcess requestState)? trashRequested,
    TResult Function(TrashNoteRequestProcess requestState, bool isByAuthor)?
        allowTrash,
    TResult Function(String message)? failed,
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
    required TResult Function(_RequestForTrash value) requestForTrash,
    required TResult Function(_TrashRequested value) trashRequested,
    required TResult Function(_AllowTrash value) allowTrash,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestForTrash value)? requestForTrash,
    TResult? Function(_TrashRequested value)? trashRequested,
    TResult? Function(_AllowTrash value)? allowTrash,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestForTrash value)? requestForTrash,
    TResult Function(_TrashRequested value)? trashRequested,
    TResult Function(_AllowTrash value)? allowTrash,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TrashNoteState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RequestForTrashImplCopyWith<$Res> {
  factory _$$RequestForTrashImplCopyWith(_$RequestForTrashImpl value,
          $Res Function(_$RequestForTrashImpl) then) =
      __$$RequestForTrashImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? missedDistance, TrashNoteRequestProcess requestState});
}

/// @nodoc
class __$$RequestForTrashImplCopyWithImpl<$Res>
    extends _$TrashNoteStateCopyWithImpl<$Res, _$RequestForTrashImpl>
    implements _$$RequestForTrashImplCopyWith<$Res> {
  __$$RequestForTrashImplCopyWithImpl(
      _$RequestForTrashImpl _value, $Res Function(_$RequestForTrashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missedDistance = freezed,
    Object? requestState = null,
  }) {
    return _then(_$RequestForTrashImpl(
      missedDistance: freezed == missedDistance
          ? _value.missedDistance
          : missedDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as TrashNoteRequestProcess,
    ));
  }
}

/// @nodoc

class _$RequestForTrashImpl implements _RequestForTrash {
  const _$RequestForTrashImpl(
      {this.missedDistance, this.requestState = TrashNoteRequestProcess.idle});

  @override
  final double? missedDistance;
  @override
  @JsonKey()
  final TrashNoteRequestProcess requestState;

  @override
  String toString() {
    return 'TrashNoteState.requestForTrash(missedDistance: $missedDistance, requestState: $requestState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestForTrashImpl &&
            (identical(other.missedDistance, missedDistance) ||
                other.missedDistance == missedDistance) &&
            (identical(other.requestState, requestState) ||
                other.requestState == requestState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, missedDistance, requestState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestForTrashImplCopyWith<_$RequestForTrashImpl> get copyWith =>
      __$$RequestForTrashImplCopyWithImpl<_$RequestForTrashImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double? missedDistance, TrashNoteRequestProcess requestState)
        requestForTrash,
    required TResult Function(TrashNoteRequestProcess requestState)
        trashRequested,
    required TResult Function(
            TrashNoteRequestProcess requestState, bool isByAuthor)
        allowTrash,
    required TResult Function(String message) failed,
  }) {
    return requestForTrash(missedDistance, requestState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            double? missedDistance, TrashNoteRequestProcess requestState)?
        requestForTrash,
    TResult? Function(TrashNoteRequestProcess requestState)? trashRequested,
    TResult? Function(TrashNoteRequestProcess requestState, bool isByAuthor)?
        allowTrash,
    TResult? Function(String message)? failed,
  }) {
    return requestForTrash?.call(missedDistance, requestState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double? missedDistance, TrashNoteRequestProcess requestState)?
        requestForTrash,
    TResult Function(TrashNoteRequestProcess requestState)? trashRequested,
    TResult Function(TrashNoteRequestProcess requestState, bool isByAuthor)?
        allowTrash,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (requestForTrash != null) {
      return requestForTrash(missedDistance, requestState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestForTrash value) requestForTrash,
    required TResult Function(_TrashRequested value) trashRequested,
    required TResult Function(_AllowTrash value) allowTrash,
    required TResult Function(_Failed value) failed,
  }) {
    return requestForTrash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestForTrash value)? requestForTrash,
    TResult? Function(_TrashRequested value)? trashRequested,
    TResult? Function(_AllowTrash value)? allowTrash,
    TResult? Function(_Failed value)? failed,
  }) {
    return requestForTrash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestForTrash value)? requestForTrash,
    TResult Function(_TrashRequested value)? trashRequested,
    TResult Function(_AllowTrash value)? allowTrash,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (requestForTrash != null) {
      return requestForTrash(this);
    }
    return orElse();
  }
}

abstract class _RequestForTrash implements TrashNoteState {
  const factory _RequestForTrash(
      {final double? missedDistance,
      final TrashNoteRequestProcess requestState}) = _$RequestForTrashImpl;

  double? get missedDistance;
  TrashNoteRequestProcess get requestState;
  @JsonKey(ignore: true)
  _$$RequestForTrashImplCopyWith<_$RequestForTrashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TrashRequestedImplCopyWith<$Res> {
  factory _$$TrashRequestedImplCopyWith(_$TrashRequestedImpl value,
          $Res Function(_$TrashRequestedImpl) then) =
      __$$TrashRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrashNoteRequestProcess requestState});
}

/// @nodoc
class __$$TrashRequestedImplCopyWithImpl<$Res>
    extends _$TrashNoteStateCopyWithImpl<$Res, _$TrashRequestedImpl>
    implements _$$TrashRequestedImplCopyWith<$Res> {
  __$$TrashRequestedImplCopyWithImpl(
      _$TrashRequestedImpl _value, $Res Function(_$TrashRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestState = null,
  }) {
    return _then(_$TrashRequestedImpl(
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as TrashNoteRequestProcess,
    ));
  }
}

/// @nodoc

class _$TrashRequestedImpl implements _TrashRequested {
  const _$TrashRequestedImpl(
      {this.requestState = TrashNoteRequestProcess.idle});

  @override
  @JsonKey()
  final TrashNoteRequestProcess requestState;

  @override
  String toString() {
    return 'TrashNoteState.trashRequested(requestState: $requestState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrashRequestedImpl &&
            (identical(other.requestState, requestState) ||
                other.requestState == requestState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrashRequestedImplCopyWith<_$TrashRequestedImpl> get copyWith =>
      __$$TrashRequestedImplCopyWithImpl<_$TrashRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double? missedDistance, TrashNoteRequestProcess requestState)
        requestForTrash,
    required TResult Function(TrashNoteRequestProcess requestState)
        trashRequested,
    required TResult Function(
            TrashNoteRequestProcess requestState, bool isByAuthor)
        allowTrash,
    required TResult Function(String message) failed,
  }) {
    return trashRequested(requestState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            double? missedDistance, TrashNoteRequestProcess requestState)?
        requestForTrash,
    TResult? Function(TrashNoteRequestProcess requestState)? trashRequested,
    TResult? Function(TrashNoteRequestProcess requestState, bool isByAuthor)?
        allowTrash,
    TResult? Function(String message)? failed,
  }) {
    return trashRequested?.call(requestState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double? missedDistance, TrashNoteRequestProcess requestState)?
        requestForTrash,
    TResult Function(TrashNoteRequestProcess requestState)? trashRequested,
    TResult Function(TrashNoteRequestProcess requestState, bool isByAuthor)?
        allowTrash,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (trashRequested != null) {
      return trashRequested(requestState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestForTrash value) requestForTrash,
    required TResult Function(_TrashRequested value) trashRequested,
    required TResult Function(_AllowTrash value) allowTrash,
    required TResult Function(_Failed value) failed,
  }) {
    return trashRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestForTrash value)? requestForTrash,
    TResult? Function(_TrashRequested value)? trashRequested,
    TResult? Function(_AllowTrash value)? allowTrash,
    TResult? Function(_Failed value)? failed,
  }) {
    return trashRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestForTrash value)? requestForTrash,
    TResult Function(_TrashRequested value)? trashRequested,
    TResult Function(_AllowTrash value)? allowTrash,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (trashRequested != null) {
      return trashRequested(this);
    }
    return orElse();
  }
}

abstract class _TrashRequested implements TrashNoteState {
  const factory _TrashRequested({final TrashNoteRequestProcess requestState}) =
      _$TrashRequestedImpl;

  TrashNoteRequestProcess get requestState;
  @JsonKey(ignore: true)
  _$$TrashRequestedImplCopyWith<_$TrashRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllowTrashImplCopyWith<$Res> {
  factory _$$AllowTrashImplCopyWith(
          _$AllowTrashImpl value, $Res Function(_$AllowTrashImpl) then) =
      __$$AllowTrashImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrashNoteRequestProcess requestState, bool isByAuthor});
}

/// @nodoc
class __$$AllowTrashImplCopyWithImpl<$Res>
    extends _$TrashNoteStateCopyWithImpl<$Res, _$AllowTrashImpl>
    implements _$$AllowTrashImplCopyWith<$Res> {
  __$$AllowTrashImplCopyWithImpl(
      _$AllowTrashImpl _value, $Res Function(_$AllowTrashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestState = null,
    Object? isByAuthor = null,
  }) {
    return _then(_$AllowTrashImpl(
      requestState: null == requestState
          ? _value.requestState
          : requestState // ignore: cast_nullable_to_non_nullable
              as TrashNoteRequestProcess,
      isByAuthor: null == isByAuthor
          ? _value.isByAuthor
          : isByAuthor // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AllowTrashImpl implements _AllowTrash {
  const _$AllowTrashImpl(
      {this.requestState = TrashNoteRequestProcess.idle,
      required this.isByAuthor});

  @override
  @JsonKey()
  final TrashNoteRequestProcess requestState;
  @override
  final bool isByAuthor;

  @override
  String toString() {
    return 'TrashNoteState.allowTrash(requestState: $requestState, isByAuthor: $isByAuthor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllowTrashImpl &&
            (identical(other.requestState, requestState) ||
                other.requestState == requestState) &&
            (identical(other.isByAuthor, isByAuthor) ||
                other.isByAuthor == isByAuthor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestState, isByAuthor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllowTrashImplCopyWith<_$AllowTrashImpl> get copyWith =>
      __$$AllowTrashImplCopyWithImpl<_$AllowTrashImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double? missedDistance, TrashNoteRequestProcess requestState)
        requestForTrash,
    required TResult Function(TrashNoteRequestProcess requestState)
        trashRequested,
    required TResult Function(
            TrashNoteRequestProcess requestState, bool isByAuthor)
        allowTrash,
    required TResult Function(String message) failed,
  }) {
    return allowTrash(requestState, isByAuthor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            double? missedDistance, TrashNoteRequestProcess requestState)?
        requestForTrash,
    TResult? Function(TrashNoteRequestProcess requestState)? trashRequested,
    TResult? Function(TrashNoteRequestProcess requestState, bool isByAuthor)?
        allowTrash,
    TResult? Function(String message)? failed,
  }) {
    return allowTrash?.call(requestState, isByAuthor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double? missedDistance, TrashNoteRequestProcess requestState)?
        requestForTrash,
    TResult Function(TrashNoteRequestProcess requestState)? trashRequested,
    TResult Function(TrashNoteRequestProcess requestState, bool isByAuthor)?
        allowTrash,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (allowTrash != null) {
      return allowTrash(requestState, isByAuthor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestForTrash value) requestForTrash,
    required TResult Function(_TrashRequested value) trashRequested,
    required TResult Function(_AllowTrash value) allowTrash,
    required TResult Function(_Failed value) failed,
  }) {
    return allowTrash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestForTrash value)? requestForTrash,
    TResult? Function(_TrashRequested value)? trashRequested,
    TResult? Function(_AllowTrash value)? allowTrash,
    TResult? Function(_Failed value)? failed,
  }) {
    return allowTrash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestForTrash value)? requestForTrash,
    TResult Function(_TrashRequested value)? trashRequested,
    TResult Function(_AllowTrash value)? allowTrash,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (allowTrash != null) {
      return allowTrash(this);
    }
    return orElse();
  }
}

abstract class _AllowTrash implements TrashNoteState {
  const factory _AllowTrash(
      {final TrashNoteRequestProcess requestState,
      required final bool isByAuthor}) = _$AllowTrashImpl;

  TrashNoteRequestProcess get requestState;
  bool get isByAuthor;
  @JsonKey(ignore: true)
  _$$AllowTrashImplCopyWith<_$AllowTrashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$TrashNoteStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TrashNoteState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double? missedDistance, TrashNoteRequestProcess requestState)
        requestForTrash,
    required TResult Function(TrashNoteRequestProcess requestState)
        trashRequested,
    required TResult Function(
            TrashNoteRequestProcess requestState, bool isByAuthor)
        allowTrash,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            double? missedDistance, TrashNoteRequestProcess requestState)?
        requestForTrash,
    TResult? Function(TrashNoteRequestProcess requestState)? trashRequested,
    TResult? Function(TrashNoteRequestProcess requestState, bool isByAuthor)?
        allowTrash,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double? missedDistance, TrashNoteRequestProcess requestState)?
        requestForTrash,
    TResult Function(TrashNoteRequestProcess requestState)? trashRequested,
    TResult Function(TrashNoteRequestProcess requestState, bool isByAuthor)?
        allowTrash,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestForTrash value) requestForTrash,
    required TResult Function(_TrashRequested value) trashRequested,
    required TResult Function(_AllowTrash value) allowTrash,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestForTrash value)? requestForTrash,
    TResult? Function(_TrashRequested value)? trashRequested,
    TResult? Function(_AllowTrash value)? allowTrash,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestForTrash value)? requestForTrash,
    TResult Function(_TrashRequested value)? trashRequested,
    TResult Function(_AllowTrash value)? allowTrash,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements TrashNoteState {
  const factory _Failed({required final String message}) = _$FailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
