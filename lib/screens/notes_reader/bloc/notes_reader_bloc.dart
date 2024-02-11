import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/location_notes/location_notes.dart';

part 'notes_reader_event.dart';
part 'notes_reader_state.dart';
part 'notes_reader_bloc.freezed.dart';

class NotesReaderBloc extends Bloc<NotesReaderEvent, NotesReaderState> {
  final LocationNotes locationNotes;
  NotesReaderBloc({required this.locationNotes})
      : super(_Ready(locationNotes: locationNotes)) {
    on<NotesReaderEvent>((event, emit) {
      event.when(
          closeScreen: () => emit(const NotesReaderState.close()),
          rebuild: (newLocationNotes) =>
              emit(NotesReaderState.ready(locationNotes: newLocationNotes)));
    });
  }
}
