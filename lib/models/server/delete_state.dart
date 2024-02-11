import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_state.freezed.dart';

@freezed
class DeleteState with _$DeleteState {
  const factory DeleteState.idle() = _Idle;
  const factory DeleteState.deleting() = _Deleting;
  const factory DeleteState.deleted() = _Deleted;
  const factory DeleteState.failed({required String message}) = _Failed;
}
