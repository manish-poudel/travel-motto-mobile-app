import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/profile/traveller_profile.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';

part 'profile_edit_event.dart';
part 'profile_edit_state.dart';
part 'profile_edit_bloc.freezed.dart';

class ProfileEditBloc extends Bloc<ProfileEditEvent, ProfileEditState> {
  final TravellerProfileRepository travellerProfileRepository;
  ProfileEditBloc({required this.travellerProfileRepository})
      : super(const _Initial()) {
    on<ProfileEditEvent>((event, emit) async {
      await event.when(
          edit: (firstName, lastName, dob, gender) async =>
              await _onEditProfile(firstName, lastName, dob, gender, emit));
    });
  }

  _onEditProfile(String firstName, String lastName, DateTime dob, String gender,
      Emitter<ProfileEditState> emit) async {
    try {
      emit(const ProfileEditState.registering());
      TravellerProfile travellerProfile = TravellerProfileRepository.profile
          .copyWith(
              firstName: firstName,
              lastName: lastName,
              dob: dob,
              gender: gender);

      if (travellerProfile == TravellerProfileRepository.profile) {
        return emit(const ProfileEditState.registered());
      }
      await travellerProfileRepository
          .updateProfile(travellerProfile)
          .then((value) {
        return emit(const ProfileEditState.registered());
      }).catchError((err) {
        emit(const ProfileEditState.failed(
            message: "Something went wrong.Try again"));
      });
    } catch (err) {
      emit(const ProfileEditState.failed(
          message: "Something went wrong.Try again"));
    }
  }
}
