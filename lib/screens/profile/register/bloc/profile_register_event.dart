part of 'profile_register_bloc.dart';

@freezed
class ProfileRegisterEvent with _$ProfileRegisterEvent {
  const factory ProfileRegisterEvent.register(
      {required String firstName,
      required String lastName,
      required DateTime dob,
      required String gender}) = _Register;
}
