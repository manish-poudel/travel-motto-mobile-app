part of 'profile_edit_bloc.dart';

@freezed
class ProfileEditEvent with _$ProfileEditEvent {
  const factory ProfileEditEvent.edit(
      {required String firstName,
      required String lastName,
      required DateTime dob,
      required String gender}) = _Edit;
}
