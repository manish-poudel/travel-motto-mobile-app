part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.signingUp() = _SigningUp;
  const factory SignupState.success() = _Success;
  const factory SignupState.failed({required String message}) = _Failed;
}
