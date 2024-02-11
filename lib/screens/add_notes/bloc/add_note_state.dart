part of 'add_note_bloc.dart';

@freezed
class SaveNoteState with _$SaveNoteState {
  const factory SaveNoteState.idle() = _Idle;
  const factory SaveNoteState.saving() = _Saving;
  const factory SaveNoteState.saved() = _Saved;
  const factory SaveNoteState.failed({required String message}) = _Failed;
}

@freezed
class AddNoteState with _$AddNoteState {
  const factory AddNoteState.initial() = _Initial;
  const factory AddNoteState.ready(
      {required TravelLocation travelLocation,
      @Default(SaveNoteState.idle()) SaveNoteState saveNoteState}) = _Ready;
  const factory AddNoteState.error({required String message}) = _Error;
}
