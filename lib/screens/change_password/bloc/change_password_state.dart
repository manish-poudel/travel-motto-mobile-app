part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = _Initial;
  const factory ChangePasswordState.ready(
      {String? email, @Default(SaveState.idle()) SaveState saveState}) = _Ready;
}
