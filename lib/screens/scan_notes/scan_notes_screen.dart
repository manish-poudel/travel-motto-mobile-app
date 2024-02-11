import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_motto/models/location_notes/location_notes.dart';
import 'package:travel_motto/screens/scan_notes/bloc/scan_notes_bloc.dart';
import 'package:travel_motto/screens/scan_notes/models/enums.dart';
import 'package:travel_motto/screens/scan_notes/widgets/location_notes_list.dart';
import 'package:travel_motto/screens/scan_notes/widgets/no_location_notes.dart';
import 'package:travel_motto/widgets/loading_message.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/widgets/something_went_wrong.dart';

class ScanNotesScreen extends StatefulWidget {
  final ScanLocationNotesType type;
  const ScanNotesScreen({super.key, this.type = ScanLocationNotesType.public});

  @override
  State<ScanNotesScreen> createState() => _ScanNotesScreenState();
}

class _ScanNotesScreenState extends State<ScanNotesScreen> {
  late final ScanNotesBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<ScanNotesBloc>();
    _bloc.add(ScanNotesEvent.started(type: widget.type));
  }

  _getScanningMessage(ScanLocationNotesType type) {
    if (type == ScanLocationNotesType.private) {
      return "Getting your notes...";
    }
    if (type == ScanLocationNotesType.public) {
      return "Scanning notes on this location";
    }
    if (type == ScanLocationNotesType.mock) {
      return "Getting mock notes for testing";
    }
  }

  _getScanningSubMessage(ScanLocationNotesType type) {
    if (type == ScanLocationNotesType.private) {
      return "";
    }
    if (type == ScanLocationNotesType.public) {
      return "Get ready to read what people left here";
    }
    if (type == ScanLocationNotesType.mock) {
      return "Get ready to read what people left here";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.getTheme(),
      child: BlocConsumer<ScanNotesBloc, ScanNotesState>(
          builder: (context, state) {
            return state.whenOrNull(ready: (locationNotesStream) {
                  return StreamBuilder<List<LocationNotes>>(
                      stream: locationNotesStream,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                                ConnectionState.active &&
                            snapshot.hasData &&
                            snapshot.data != null) {
                          List<LocationNotes> locationNotes = snapshot.data!;
                          return Scaffold(
                              backgroundColor: Colors.white,
                              appBar: AppBar(
                                backgroundColor: Colors.white,
                                leading: IconButton(
                                    icon: const Icon(
                                      Icons.arrow_back_ios,
                                      size: 16,
                                    ),
                                    onPressed: () =>
                                        Navigator.of(context).pop()),
                                actions: [
                                  IconButton(
                                      onPressed: () {
                                        _bloc.add(const ScanNotesEvent.clear());
                                      },
                                      icon: const Icon(Icons.clear))
                                ],
                                title: const Text(
                                  "Notes",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              body: locationNotes.isEmpty
                                  ? const NoLocationNotes()
                                  : LocationNotesList(
                                      locationNotes: locationNotes));
                        }
                        return Scaffold(
                          backgroundColor: Colors.white,
                          body: LoadingMessage(
                            title: _getScanningMessage(widget.type),
                            subtitle: _getScanningSubMessage(widget.type),
                          ),
                        );
                      });
                }) ??
                Scaffold(
                    backgroundColor: Colors.white,
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                    ),
                    body: Center(child: SomethingWentWrong(onRetry: () {
                      _bloc.add(ScanNotesEvent.started(type: widget.type));
                    })));
          },
          listener: (context, state) {}),
    );
  }
}
