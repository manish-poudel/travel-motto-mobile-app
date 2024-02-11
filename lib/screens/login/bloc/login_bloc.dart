import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(
          logIn: ((email, password) async =>
              await _onLogin(email, password, emit)));
    });
  }

  _onLogin(String email, String password, Emitter<LoginState> emit) async {
    try {
      emit(const LoginState.logging());
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        emit(const LoginState.loggedIn());
      }).catchError((err) {
        if (err is FirebaseAuthException) {
          emit(LoginState.error(message: err.message.toString()));
        } else {
          emit(const LoginState.error(
              message: "Something went wrong.Try again"));
        }
      });
    } catch (err) {
      emit(const LoginState.error(message: "Something went wrong.Try again"));
    }
  }
}
