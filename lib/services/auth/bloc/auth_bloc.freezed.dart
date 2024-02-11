// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String travellerId) getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String travellerId)? getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String travellerId)? getProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProfile value) getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProfile value)? getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProfile value)? getProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

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
    extends _$AuthEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AuthEvent.started()';
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
    required TResult Function(String travellerId) getProfile,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String travellerId)? getProfile,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String travellerId)? getProfile,
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
    required TResult Function(_GetProfile value) getProfile,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProfile value)? getProfile,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProfile value)? getProfile,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetProfileImplCopyWith<$Res> {
  factory _$$GetProfileImplCopyWith(
          _$GetProfileImpl value, $Res Function(_$GetProfileImpl) then) =
      __$$GetProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String travellerId});
}

/// @nodoc
class __$$GetProfileImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetProfileImpl>
    implements _$$GetProfileImplCopyWith<$Res> {
  __$$GetProfileImplCopyWithImpl(
      _$GetProfileImpl _value, $Res Function(_$GetProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travellerId = null,
  }) {
    return _then(_$GetProfileImpl(
      travellerId: null == travellerId
          ? _value.travellerId
          : travellerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProfileImpl implements _GetProfile {
  const _$GetProfileImpl({required this.travellerId});

  @override
  final String travellerId;

  @override
  String toString() {
    return 'AuthEvent.getProfile(travellerId: $travellerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileImpl &&
            (identical(other.travellerId, travellerId) ||
                other.travellerId == travellerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, travellerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileImplCopyWith<_$GetProfileImpl> get copyWith =>
      __$$GetProfileImplCopyWithImpl<_$GetProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String travellerId) getProfile,
  }) {
    return getProfile(travellerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String travellerId)? getProfile,
  }) {
    return getProfile?.call(travellerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String travellerId)? getProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(travellerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProfile value) getProfile,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetProfile value)? getProfile,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProfile value)? getProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetProfile implements AuthEvent {
  const factory _GetProfile({required final String travellerId}) =
      _$GetProfileImpl;

  String get travellerId;
  @JsonKey(ignore: true)
  _$$GetProfileImplCopyWith<_$GetProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedOut,
    required TResult Function(User firebaseUser) loggedIn,
    required TResult Function() loadingProfile,
    required TResult Function() profileLoaded,
    required TResult Function() noProfile,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(User firebaseUser)? loggedIn,
    TResult? Function()? loadingProfile,
    TResult? Function()? profileLoaded,
    TResult? Function()? noProfile,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(User firebaseUser)? loggedIn,
    TResult Function()? loadingProfile,
    TResult Function()? profileLoaded,
    TResult Function()? noProfile,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoadingProfile value) loadingProfile,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_NoProfile value) noProfile,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoadingProfile value)? loadingProfile,
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_NoProfile value)? noProfile,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoadingProfile value)? loadingProfile,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_NoProfile value)? noProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AuthState.initial()';
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
    required TResult Function() loggedOut,
    required TResult Function(User firebaseUser) loggedIn,
    required TResult Function() loadingProfile,
    required TResult Function() profileLoaded,
    required TResult Function() noProfile,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(User firebaseUser)? loggedIn,
    TResult? Function()? loadingProfile,
    TResult? Function()? profileLoaded,
    TResult? Function()? noProfile,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(User firebaseUser)? loggedIn,
    TResult Function()? loadingProfile,
    TResult Function()? profileLoaded,
    TResult Function()? noProfile,
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
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoadingProfile value) loadingProfile,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_NoProfile value) noProfile,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoadingProfile value)? loadingProfile,
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_NoProfile value)? noProfile,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoadingProfile value)? loadingProfile,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_NoProfile value)? noProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOutImpl implements _LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'AuthState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedOut,
    required TResult Function(User firebaseUser) loggedIn,
    required TResult Function() loadingProfile,
    required TResult Function() profileLoaded,
    required TResult Function() noProfile,
    required TResult Function(String message) error,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(User firebaseUser)? loggedIn,
    TResult? Function()? loadingProfile,
    TResult? Function()? profileLoaded,
    TResult? Function()? noProfile,
    TResult? Function(String message)? error,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(User firebaseUser)? loggedIn,
    TResult Function()? loadingProfile,
    TResult Function()? profileLoaded,
    TResult Function()? noProfile,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoadingProfile value) loadingProfile,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_NoProfile value) noProfile,
    required TResult Function(_Error value) error,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoadingProfile value)? loadingProfile,
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_NoProfile value)? noProfile,
    TResult? Function(_Error value)? error,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoadingProfile value)? loadingProfile,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_NoProfile value)? noProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthState {
  const factory _LoggedOut() = _$LoggedOutImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User firebaseUser});
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseUser = null,
  }) {
    return _then(_$LoggedInImpl(
      firebaseUser: null == firebaseUser
          ? _value.firebaseUser
          : firebaseUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl({required this.firebaseUser});

  @override
  final User firebaseUser;

  @override
  String toString() {
    return 'AuthState.loggedIn(firebaseUser: $firebaseUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.firebaseUser, firebaseUser) ||
                other.firebaseUser == firebaseUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firebaseUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedOut,
    required TResult Function(User firebaseUser) loggedIn,
    required TResult Function() loadingProfile,
    required TResult Function() profileLoaded,
    required TResult Function() noProfile,
    required TResult Function(String message) error,
  }) {
    return loggedIn(firebaseUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(User firebaseUser)? loggedIn,
    TResult? Function()? loadingProfile,
    TResult? Function()? profileLoaded,
    TResult? Function()? noProfile,
    TResult? Function(String message)? error,
  }) {
    return loggedIn?.call(firebaseUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(User firebaseUser)? loggedIn,
    TResult Function()? loadingProfile,
    TResult Function()? profileLoaded,
    TResult Function()? noProfile,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(firebaseUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoadingProfile value) loadingProfile,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_NoProfile value) noProfile,
    required TResult Function(_Error value) error,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoadingProfile value)? loadingProfile,
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_NoProfile value)? noProfile,
    TResult? Function(_Error value)? error,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoadingProfile value)? loadingProfile,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_NoProfile value)? noProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthState {
  const factory _LoggedIn({required final User firebaseUser}) = _$LoggedInImpl;

  User get firebaseUser;
  @JsonKey(ignore: true)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingProfileImplCopyWith<$Res> {
  factory _$$LoadingProfileImplCopyWith(_$LoadingProfileImpl value,
          $Res Function(_$LoadingProfileImpl) then) =
      __$$LoadingProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingProfileImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingProfileImpl>
    implements _$$LoadingProfileImplCopyWith<$Res> {
  __$$LoadingProfileImplCopyWithImpl(
      _$LoadingProfileImpl _value, $Res Function(_$LoadingProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingProfileImpl implements _LoadingProfile {
  const _$LoadingProfileImpl();

  @override
  String toString() {
    return 'AuthState.loadingProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedOut,
    required TResult Function(User firebaseUser) loggedIn,
    required TResult Function() loadingProfile,
    required TResult Function() profileLoaded,
    required TResult Function() noProfile,
    required TResult Function(String message) error,
  }) {
    return loadingProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(User firebaseUser)? loggedIn,
    TResult? Function()? loadingProfile,
    TResult? Function()? profileLoaded,
    TResult? Function()? noProfile,
    TResult? Function(String message)? error,
  }) {
    return loadingProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(User firebaseUser)? loggedIn,
    TResult Function()? loadingProfile,
    TResult Function()? profileLoaded,
    TResult Function()? noProfile,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadingProfile != null) {
      return loadingProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoadingProfile value) loadingProfile,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_NoProfile value) noProfile,
    required TResult Function(_Error value) error,
  }) {
    return loadingProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoadingProfile value)? loadingProfile,
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_NoProfile value)? noProfile,
    TResult? Function(_Error value)? error,
  }) {
    return loadingProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoadingProfile value)? loadingProfile,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_NoProfile value)? noProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadingProfile != null) {
      return loadingProfile(this);
    }
    return orElse();
  }
}

abstract class _LoadingProfile implements AuthState {
  const factory _LoadingProfile() = _$LoadingProfileImpl;
}

/// @nodoc
abstract class _$$ProfileLoadedImplCopyWith<$Res> {
  factory _$$ProfileLoadedImplCopyWith(
          _$ProfileLoadedImpl value, $Res Function(_$ProfileLoadedImpl) then) =
      __$$ProfileLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ProfileLoadedImpl>
    implements _$$ProfileLoadedImplCopyWith<$Res> {
  __$$ProfileLoadedImplCopyWithImpl(
      _$ProfileLoadedImpl _value, $Res Function(_$ProfileLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLoadedImpl implements _ProfileLoaded {
  const _$ProfileLoadedImpl();

  @override
  String toString() {
    return 'AuthState.profileLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedOut,
    required TResult Function(User firebaseUser) loggedIn,
    required TResult Function() loadingProfile,
    required TResult Function() profileLoaded,
    required TResult Function() noProfile,
    required TResult Function(String message) error,
  }) {
    return profileLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(User firebaseUser)? loggedIn,
    TResult? Function()? loadingProfile,
    TResult? Function()? profileLoaded,
    TResult? Function()? noProfile,
    TResult? Function(String message)? error,
  }) {
    return profileLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(User firebaseUser)? loggedIn,
    TResult Function()? loadingProfile,
    TResult Function()? profileLoaded,
    TResult Function()? noProfile,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (profileLoaded != null) {
      return profileLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoadingProfile value) loadingProfile,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_NoProfile value) noProfile,
    required TResult Function(_Error value) error,
  }) {
    return profileLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoadingProfile value)? loadingProfile,
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_NoProfile value)? noProfile,
    TResult? Function(_Error value)? error,
  }) {
    return profileLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoadingProfile value)? loadingProfile,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_NoProfile value)? noProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (profileLoaded != null) {
      return profileLoaded(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoaded implements AuthState {
  const factory _ProfileLoaded() = _$ProfileLoadedImpl;
}

/// @nodoc
abstract class _$$NoProfileImplCopyWith<$Res> {
  factory _$$NoProfileImplCopyWith(
          _$NoProfileImpl value, $Res Function(_$NoProfileImpl) then) =
      __$$NoProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoProfileImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NoProfileImpl>
    implements _$$NoProfileImplCopyWith<$Res> {
  __$$NoProfileImplCopyWithImpl(
      _$NoProfileImpl _value, $Res Function(_$NoProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoProfileImpl implements _NoProfile {
  const _$NoProfileImpl();

  @override
  String toString() {
    return 'AuthState.noProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggedOut,
    required TResult Function(User firebaseUser) loggedIn,
    required TResult Function() loadingProfile,
    required TResult Function() profileLoaded,
    required TResult Function() noProfile,
    required TResult Function(String message) error,
  }) {
    return noProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(User firebaseUser)? loggedIn,
    TResult? Function()? loadingProfile,
    TResult? Function()? profileLoaded,
    TResult? Function()? noProfile,
    TResult? Function(String message)? error,
  }) {
    return noProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(User firebaseUser)? loggedIn,
    TResult Function()? loadingProfile,
    TResult Function()? profileLoaded,
    TResult Function()? noProfile,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (noProfile != null) {
      return noProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoadingProfile value) loadingProfile,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_NoProfile value) noProfile,
    required TResult Function(_Error value) error,
  }) {
    return noProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoadingProfile value)? loadingProfile,
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_NoProfile value)? noProfile,
    TResult? Function(_Error value)? error,
  }) {
    return noProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoadingProfile value)? loadingProfile,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_NoProfile value)? noProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (noProfile != null) {
      return noProfile(this);
    }
    return orElse();
  }
}

abstract class _NoProfile implements AuthState {
  const factory _NoProfile() = _$NoProfileImpl;
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
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'AuthState.error(message: $message)';
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
    required TResult Function() loggedOut,
    required TResult Function(User firebaseUser) loggedIn,
    required TResult Function() loadingProfile,
    required TResult Function() profileLoaded,
    required TResult Function() noProfile,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggedOut,
    TResult? Function(User firebaseUser)? loggedIn,
    TResult? Function()? loadingProfile,
    TResult? Function()? profileLoaded,
    TResult? Function()? noProfile,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggedOut,
    TResult Function(User firebaseUser)? loggedIn,
    TResult Function()? loadingProfile,
    TResult Function()? profileLoaded,
    TResult Function()? noProfile,
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
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoadingProfile value) loadingProfile,
    required TResult Function(_ProfileLoaded value) profileLoaded,
    required TResult Function(_NoProfile value) noProfile,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoadingProfile value)? loadingProfile,
    TResult? Function(_ProfileLoaded value)? profileLoaded,
    TResult? Function(_NoProfile value)? noProfile,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoadingProfile value)? loadingProfile,
    TResult Function(_ProfileLoaded value)? profileLoaded,
    TResult Function(_NoProfile value)? noProfile,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
