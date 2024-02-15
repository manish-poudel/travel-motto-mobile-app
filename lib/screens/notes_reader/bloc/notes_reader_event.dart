part of 'notes_reader_bloc.dart';

@freezed
class NotesReaderEvent with _$NotesReaderEvent {
  const factory NotesReaderEvent.rebuild(
      {required LocationNotes locationNotes}) = _Rebuild;
  const factory NotesReaderEvent.closeScreen() = _CloseScreen;
  const factory NotesReaderEvent.started() = _Started;
}
