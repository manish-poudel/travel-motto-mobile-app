part of 'trash_note_bloc.dart';

enum TrashNoteRequestProcess { idle, loading, success, failed }

@freezed
class TrashNoteState with _$TrashNoteState {
  const factory TrashNoteState.initial() = _Initial;
  const factory TrashNoteState.requestForTrash(
          {double? missedDistance,
          @Default(TrashNoteRequestProcess.idle)
          TrashNoteRequestProcess requestState}) =
      _RequestForTrash; // when author can delete note but can  request for trash [missedDistance] means how much he missed the distance
  const factory TrashNoteState.trashRequested(
          {@Default(TrashNoteRequestProcess.idle)
          TrashNoteRequestProcess requestState}) =
      _TrashRequested; // when note has already been requested for trash
// when suer can trash note means he is on the location
  const factory TrashNoteState.allowTrash(
          {@Default(TrashNoteRequestProcess.idle)
          TrashNoteRequestProcess requestState,
          required bool isByAuthor}) =
      _AllowTrash; // meaning when this note can be trashed by reader as a result from the request of author
  const factory TrashNoteState.failed({required String message}) = _Failed;
}
