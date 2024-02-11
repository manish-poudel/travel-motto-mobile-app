part of 'profile_register_bloc.dart';

@freezed
class ProfileRegisterState with _$ProfileRegisterState {
  const factory ProfileRegisterState.initial() = _Initial;
  const factory ProfileRegisterState.registering() = _Registering;
  const factory ProfileRegisterState.registered() = _Registered;
  const factory ProfileRegisterState.failed({required String message}) =
      _Failed;
}
