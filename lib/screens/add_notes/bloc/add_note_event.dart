part of 'add_note_bloc.dart';

@freezed
class AddNoteEvent with _$AddNoteEvent {
  const factory AddNoteEvent.started() = _Started;
  const factory AddNoteEvent.save(
      {required String title,
      required String notes,
      required TravelLocation locaiton}) = _Save;
}
