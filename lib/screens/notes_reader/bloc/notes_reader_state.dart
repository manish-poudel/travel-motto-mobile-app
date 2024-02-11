part of 'notes_reader_bloc.dart';

@freezed
class NotesReaderState with _$NotesReaderState {
  const factory NotesReaderState.initial() = _Initial;
  const factory NotesReaderState.ready({
    required LocationNotes locationNotes,
  }) = _Ready;
  const factory NotesReaderState.close() = _Close;
  const factory NotesReaderState.error({required String message}) = _Error;
}
