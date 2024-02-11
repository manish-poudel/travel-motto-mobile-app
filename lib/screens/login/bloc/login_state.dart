part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.logging() = _Logging;
  const factory LoginState.loggedIn() = _LoggedIn;
  const factory LoginState.error({required String message}) = _Error;
}
