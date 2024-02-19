import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/screens/scan_notes/models/enums.dart';

class NoteNavigator extends StatelessWidget {
  final String fullAddress;
  const NoteNavigator({super.key, this.fullAddress = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Traveler notes",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Roboto'),
          ),
          fullAddress.isEmpty
              ? const SizedBox.shrink()
              : Text(
                  "You are at $fullAddress ",
                  style: const TextStyle(color: Colors.black54, fontSize: 11),
                ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, left: 0, right: 0, bottom: 0.0),
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(1))))),
                  onPressed: () {
                    context.push('/scan_note',
                        extra: ScanLocationNotesType.public);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.search),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Scan note left by travelers",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(1)),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, bottom: 32.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: TextButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(18),
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor.withOpacity(1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      side: BorderSide(
                                          color: Theme.of(context)
                                              .primaryColor
                                              .withOpacity(1))))),
                      onPressed: () {
                        context.push('/add_note');
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.note_alt,
                            color: Colors.white,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                "Leave note for other travelers",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              )),
        ],
      ),
    );
  }
}
