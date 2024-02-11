import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_motto/screens/add_notes/bloc/add_note_bloc.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/widgets/snackbar.dart';
import 'package:travel_motto/widgets/something_went_wrong.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  late AddNoteBloc _bloc;
  TextEditingController titleController = TextEditingController(text: '');
  TextEditingController notesController = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();
    _bloc = context.read<AddNoteBloc>();
    _bloc.add(const AddNoteEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: AppTheme.getTheme(),
        child:
            BlocConsumer<AddNoteBloc, AddNoteState>(builder: (context, state) {
          return state.whenOrNull(initial: () {
                return const Scaffold(
                    body: Center(child: CircularProgressIndicator()));
              }, ready: (travelLocation, saveNoteState) {
                bool isSaving =
                    saveNoteState.whenOrNull(saving: () => true) ?? false;
                return Scaffold(
                    backgroundColor: Colors.white,
                    floatingActionButton: FloatingActionButton(
                        onPressed: isSaving
                            ? null
                            : () {
                                // Check if note is not empty
                                if (notesController.text.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text("Please add note")));
                                  return;
                                }
                                _bloc.add(AddNoteEvent.save(
                                    title: titleController.text.trim(),
                                    notes: notesController.text.trim(),
                                    locaiton: travelLocation));
                              },
                        child: isSaving
                            ? const CircularProgressIndicator()
                            : Icon(
                                Icons.add,
                                color: Colors.black.withOpacity(0.7),
                              )),
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      title: TextField(
                        controller: titleController,
                        decoration: const InputDecoration(
                          hintText: "Add title",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      leading: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 16,
                          ),
                          onPressed: () => Navigator.of(context).pop()),
                    ),
                    body: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: notesController,
                        autofocus: true,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        style: const TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: Colors.grey[500], fontSize: 12),
                            hintMaxLines: 50,
                            hintText:
                                "You are about to leave your note at:\n${travelLocation.getReadableLocation()}"
                                "\n\nBefore typing, please carefully review the following rules:"
                                "\n- Avoid using offensive language. Violation may result in permanent banning."
                                "\n- Readers must be present at the note's location to view it."
                                "\n- You may delete the note if you are at its location."
                                "\n- Alternatively, you can request its removal, allowing travelers in the vicinity to delete it."
                                "\n\nRemember, leave notes, not litter!"),
                      ),
                    ));
              }) ??
              Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    leading: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                        ),
                        onPressed: () => Navigator.of(context).pop()),
                  ),
                  body: Center(child: SomethingWentWrong(onRetry: () {
                    _bloc.add(const AddNoteEvent.started());
                  })));
        }, listener: (context, state) {
          state.whenOrNull(ready: (_, saveState) {
            saveState.whenOrNull(failed: (message) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(message)));
            }, saved: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                      "Congrats! You just left the note at your location.")));
            });
          }, error: (message) {
            showSnackBar(context, message);
          });
        }));
  }
}
