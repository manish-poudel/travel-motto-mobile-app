import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(const _Initial()) {
    on<SignupEvent>((event, emit) async {
      await event.when(
          signUp: ((email, password) async =>
              await _onSignUp(email, password, emit)));
    });
  }

  _onSignUp(String email, String password, Emitter<SignupState> emit) async {
    try {
      emit(const SignupState.signingUp());
      if (email.isEmpty || password.isEmpty) {
        return emit(const SignupState.failed(
            message: "Please provide your information."));
      }
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        emit(const SignupState.success());
      }).catchError((err) {
        if (err is FirebaseAuthException) {
          if (err.code == 'weak-password') {
            emit(const SignupState.failed(
                message:
                    "The password provided is too weak. It should be at least 6 characters"));
          } else if (err.code == 'email-already-in-use') {
            emit(const SignupState.failed(
                message: "The account already exists for that email."));
          } else if (err.code == "invalid-email") {
            emit(const SignupState.failed(message: "Invalid email"));
          } else {
            emit(const SignupState.failed(
                message: "Something went wrong.Try again"));
          }
        } else {
          emit(const SignupState.failed(
              message: "Something went wrong.Try again"));
        }
      });
    } catch (err) {
      emit(SignupState.failed(message: err.toString()));
    }
  }
}
