import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/screens/scan_notes/models/enums.dart';
import 'package:travel_motto/widgets/tm_primary_button.dart';

class NoLocationNotes extends StatelessWidget {
  final ScanLocationNotesType type;
  const NoLocationNotes({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Center(
            child: Image.asset(
              'assets/images/paper.png',
              height: 80,
              width: 80,
            ),
          ),
        ),
        type == ScanLocationNotesType.public
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Text("No notes found on this location",
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400)),
                    Text("Be the first one to leave the note here",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.5),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TMPrimaryButton(
                          text: "Leave note",
                          onPressed: () {
                            context.pushReplacement('/add_note');
                          }),
                    )
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Text("No notes found",
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TMPrimaryButton(
                          text: "Leave note",
                          onPressed: () {
                            context.pushReplacement('/add_note');
                          }),
                    )
                  ],
                ),
              )
      ],
    );
  }
}
