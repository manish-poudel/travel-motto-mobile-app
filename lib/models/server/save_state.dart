import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_state.freezed.dart';

@freezed
class SaveState with _$SaveState {
  const factory SaveState.idle() = _Idle;
  const factory SaveState.saving() = _Saving;
  const factory SaveState.saved() = _Saved;
  const factory SaveState.failed({required String message}) = _Failed;
}
