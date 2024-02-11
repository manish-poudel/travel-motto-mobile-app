part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loggedOut() = _LoggedOut;
  const factory AuthState.loggedIn({required User firebaseUser}) = _LoggedIn;
  const factory AuthState.loadingProfile() = _LoadingProfile;
  const factory AuthState.profileLoaded() = _ProfileLoaded;
  const factory AuthState.noProfile() = _NoProfile;
  const factory AuthState.error({required String message}) = _Error;
}
