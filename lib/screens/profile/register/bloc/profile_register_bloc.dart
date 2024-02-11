import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/profile/traveller_profile.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';

part 'profile_register_event.dart';
part 'profile_register_state.dart';
part 'profile_register_bloc.freezed.dart';

class ProfileRegisterBloc
    extends Bloc<ProfileRegisterEvent, ProfileRegisterState> {
  final TravellerProfileRepository travellerProfileRepository;
  ProfileRegisterBloc({required this.travellerProfileRepository})
      : super(const _Initial()) {
    on<ProfileRegisterEvent>((event, emit) async {
      await event.when(
          register: (firstName, lastName, dob, gender) async =>
              await _onRegister(firstName, lastName, dob, gender, emit));
    });
  }

  _onRegister(String firstName, String lastName, DateTime dob, String gender,
      Emitter<ProfileRegisterState> emit) async {
    try {
      emit(const ProfileRegisterState.registering());
      String id = FirebaseAuth.instance.currentUser!.uid;
      TravellerProfile profile = TravellerProfile(
          id: id,
          firstName: firstName,
          lastName: lastName,
          dob: dob,
          rank: "Apprentice",
          gender: gender,
          documentUploadUsage:
              DocumentUploadUsage(maxLimit: 1000, used: 0, unit: "KB"));
      await travellerProfileRepository
          .registerTraveller(profile: profile)
          .then((value) {
        travellerProfileRepository.applyProfile(profile);
        emit(const ProfileRegisterState.registered());
      }).catchError((err) {
        emit(const ProfileRegisterState.failed(
            message: "Something went wrong.Try again"));
      });
    } catch (err) {
      emit(const ProfileRegisterState.failed(
          message: "Something went wrong.Try again"));
    }
  }
}
