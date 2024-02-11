part of 'scan_notes_bloc.dart';

@freezed
class ScanNotesState with _$ScanNotesState {
  const factory ScanNotesState.initial() = _Initial;
  const factory ScanNotesState.ready(
      {required Stream<List<LocationNotes>> locationNotesStream}) = _Ready;
  const factory ScanNotesState.error({required String message}) = _Error;
}
