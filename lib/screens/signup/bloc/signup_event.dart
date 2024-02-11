part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signUp(
      {required String email, required String password}) = _SignUp;
}
