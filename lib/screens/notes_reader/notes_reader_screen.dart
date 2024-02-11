import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_motto/models/location_notes/location_notes.dart';
import 'package:travel_motto/repositories/repository_container.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/screens/notes_reader/bloc/notes_reader_bloc.dart';
import 'package:travel_motto/screens/notes_reader/widgets/notes_reader_bottomsheet.dart';
import 'package:travel_motto/screens/trash_note/bloc/trash_note_bloc.dart';

import 'package:travel_motto/theme/theme.dart';

class NotesReaderScreen extends StatefulWidget {
  const NotesReaderScreen({super.key});

  @override
  State<NotesReaderScreen> createState() => _NotesReaderScreenState();
}

class _NotesReaderScreenState extends State<NotesReaderScreen> {
  late final NotesReaderBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = context.read<NotesReaderBloc>();
  }

  /// Open modal bottom sheet for deleting profile
  _openDeleteModalBottomSheet(LocationNotes locationNotes) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
      ),
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return Theme(
          data: AppTheme.getTheme(),
          child: BlocProvider(
              create: (_) => TrashNoteBloc(
                  locationNotes: locationNotes,
                  locationNotesRepository: context
                      .read<RepositoryContainer>()
                      .locationNotesRepository,
                  locationRepository:
                      context.read<RepositoryContainer>().locationRepository),
              child: NotesReaderBottomSheet(
                notesReaderBloc: _bloc,
              )),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: AppTheme.getTheme(),
        child: BlocConsumer<NotesReaderBloc, NotesReaderState>(
            builder: (context, state) {
          return state.whenOrNull(initial: () {
                return const Scaffold(
                    body: Center(child: CircularProgressIndicator()));
              }, ready: (locationNotes) {
                return Scaffold(
                    backgroundColor: Colors.white,
                    appBar: AppBar(
                      actions: TravellerProfileRepository.profile.id ==
                                  locationNotes.authorId ||
                              locationNotes.state == "trash_requested"
                          ? [
                              IconButton(
                                  onPressed: () => _openDeleteModalBottomSheet(
                                      locationNotes),
                                  icon: const Icon(
                                    Icons.delete,
                                  ))
                            ]
                          : null,
                      backgroundColor: Colors.white,
                      leading: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 16,
                          ),
                          onPressed: () => Navigator.of(context).pop()),
                      title: Text(
                        locationNotes.title,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffE09132)),
                      ),
                    ),
                    body: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                child: Text(
                                  locationNotes.notes,
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      locationNotes.authorName,
                                      style: TextStyle(
                                          fontFamily: 'Dancing',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade500),
                                    ),
                                    Text(
                                      locationNotes.fullAddress,
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          fontFamily: 'Dancing',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ));
              }) ??
              const SizedBox.shrink();
        }, listener: (context, state) {
          state.whenOrNull(close: () {
            Navigator.of(context).pop();
          });
        }));
  }
}
