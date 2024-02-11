part of 'scan_notes_bloc.dart';

@freezed
class ScanNotesEvent with _$ScanNotesEvent {
  const factory ScanNotesEvent.started({required ScanLocationNotesType type}) =
      _Started;
  const factory ScanNotesEvent.clear() = _Clear;
}
