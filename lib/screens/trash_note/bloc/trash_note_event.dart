part of 'trash_note_bloc.dart';

@freezed
class TrashNoteEvent with _$TrashNoteEvent {
  const factory TrashNoteEvent.started() = _Started;
  const factory TrashNoteEvent.trashNote() = _TrashNote;
  const factory TrashNoteEvent.cancelTrashRequest() = _CancelTrashRequest;
  const factory TrashNoteEvent.requestTrash() = _RequestTrash;
}
