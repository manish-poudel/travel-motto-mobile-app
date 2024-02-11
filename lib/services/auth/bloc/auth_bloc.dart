import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  FirebaseAuth auth;
  TravellerProfileRepository travellerProfileRepository;
  AuthBloc({required this.auth, required this.travellerProfileRepository})
      : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
          started: () async => await _onAuthEventStarted(emit),
          getProfile: (travellerId) => _getTravellerProfile(travellerId, emit));
    });
  }

  // When auth event is started, check if user is logged in or not and load user data if is authenticated.
  _onAuthEventStarted(Emitter<AuthState> emit) async {
    try {
      // If current user is null, emit logged out
      if (auth.currentUser == null) {
        emit(const AuthState.loggedOut());
      } else {
        emit(AuthState.loggedIn(firebaseUser: auth.currentUser!));
      }
    } catch (err) {
      emit(const AuthState.error(message: "Something went wrong. Try again"));
    }
  }

  /// Get traveller's profile from [travellerId] and [emit] new state
  _getTravellerProfile(String travellerId, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.loadingProfile());
      bool profileInitialized =
          await travellerProfileRepository.initProfile(uid: travellerId);
      if (profileInitialized) {
        emit(const AuthState.profileLoaded());
      } else {
        emit(const AuthState.noProfile());
      }
    } catch (err) {
      emit(const AuthState.error(message: "Something went wrong. Try again"));
    }
  }
}
