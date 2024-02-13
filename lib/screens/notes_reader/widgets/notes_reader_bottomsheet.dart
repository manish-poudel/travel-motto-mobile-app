import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_motto/screens/notes_reader/bloc/notes_reader_bloc.dart';
import 'package:travel_motto/screens/trash_note/bloc/trash_note_bloc.dart';
import 'package:travel_motto/screens/trash_note/widgets/allow_trash_by_author.dart';
import 'package:travel_motto/screens/trash_note/widgets/allow_trash_by_reader.dart';
import 'package:travel_motto/screens/trash_note/widgets/cancel_trash_request.dart';
import 'package:travel_motto/screens/trash_note/widgets/request_for_trash.dart';
import 'package:travel_motto/widgets/something_went_wrong.dart';

class NotesReaderBottomSheet extends StatefulWidget {
  final NotesReaderBloc notesReaderBloc;
  const NotesReaderBottomSheet({super.key, required this.notesReaderBloc});

  @override
  State<NotesReaderBottomSheet> createState() => _NotesReaderBottomSheetState();
}

class _NotesReaderBottomSheetState extends State<NotesReaderBottomSheet> {
  late final TrashNoteBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = context.read<TrashNoteBloc>();
    _bloc.add(const TrashNoteEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrashNoteBloc, TrashNoteState>(
        builder: (context, state) {
      return state.when(initial: () {
        return const Center(child: CircularProgressIndicator());
      }, requestForTrash: (missedDistance, requestState) {
        return RequestForTrash(
            onPressed: () => _bloc.add(const TrashNoteEvent.requestTrash()),
            missedDistance: missedDistance,
            showLoading: requestState == TrashNoteRequestProcess.loading);
      }, trashRequested: (requestState) {
        return CancelTrashRequest(
            onPressed: () =>
                _bloc.add(const TrashNoteEvent.cancelTrashRequest()),
            showLoading: requestState == TrashNoteRequestProcess.loading);
      }, allowTrash: (requestState, isByAuthor) {
        return isByAuthor
            ? AllowTrashByAuthor(
                onPressed: () => _bloc.add(const TrashNoteEvent.trashNote()),
                showLoading: requestState == TrashNoteRequestProcess.loading)
            : AllowTrashByReader(
                onPressed: () => _bloc.add(const TrashNoteEvent.trashNote()),
                showLoading: requestState == TrashNoteRequestProcess.loading);
      }, failed: (message) {
        return const Padding(
            padding: EdgeInsets.all(16.0), child: SomethingWentWrong());
      });
    }, listener: (context, state) {
      state.when(
          initial: () {},
          requestForTrash: (_, state) {
            if (state == TrashNoteRequestProcess.success) {
              Navigator.of(context).pop();
              widget.notesReaderBloc.add(NotesReaderEvent.rebuild(
                  locationNotes:
                      _bloc.locationNotes.copyWith(state: "trash_requested")));
            }
          },
          trashRequested: (state) {
            if (state == TrashNoteRequestProcess.success) {
              Navigator.of(context).pop();
              widget.notesReaderBloc.add(NotesReaderEvent.rebuild(
                  locationNotes:
                      _bloc.locationNotes.copyWith(state: "active")));
            }
          },
          allowTrash: (state, _) {
            if (state == TrashNoteRequestProcess.success) {
              Navigator.of(context).pop();
              widget.notesReaderBloc.add(const NotesReaderEvent.closeScreen());
            }
          },
          failed: (message) {});
    });
  }
}
