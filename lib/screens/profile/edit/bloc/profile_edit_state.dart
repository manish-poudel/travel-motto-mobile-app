part of 'profile_edit_bloc.dart';

@freezed
class ProfileEditState with _$ProfileEditState {
  const factory ProfileEditState.initial() = _Initial;
  const factory ProfileEditState.registering() = _Registering;
  const factory ProfileEditState.registered() = _Registered;
  const factory ProfileEditState.failed({required String message}) = _Failed;
}
