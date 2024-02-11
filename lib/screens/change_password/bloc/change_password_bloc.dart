import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/server/save_state.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc() : super(const _Initial()) {
    on<ChangePasswordEvent>((event, emit) async {
      await event.when(
          started: () => _onEventStarted(emit),
          sendEmail: (String email) async => await _onSendEmail(email, emit));
    });
  }

  _onEventStarted(Emitter<ChangePasswordState> emit) {
    String? email = FirebaseAuth.instance.currentUser?.email;
    emit(ChangePasswordState.ready(email: email));
  }

  _onSendEmail(String email, Emitter<ChangePasswordState> emit) async {
    try {
      emit((state as _Ready).copyWith(saveState: const SaveState.saving()));
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email)
          .then((value) {
        emit((state as _Ready).copyWith(saveState: const SaveState.saved()));
      }).catchError((err) {
        emit((state as _Ready).copyWith(
            saveState: const SaveState.failed(
                message:
                    "Unable to send email. Please ensure that your email address is correctly entered.")));
      });
    } catch (err) {
      emit((state as _Ready).copyWith(
          saveState: const SaveState.failed(
              message: "Something went wrong.Try again!")));
    }
  }
}
