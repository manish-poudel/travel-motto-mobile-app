import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/models/location_notes/location_notes.dart';

class LocationNotesList extends StatelessWidget {
  final List<LocationNotes> locationNotes;
  const LocationNotesList({
    super.key,
    required this.locationNotes,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: locationNotes.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () =>
              context.push('/note_reader', extra: locationNotes[index]),
          title: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: locationNotes[index].title.isNotEmpty,
                    child: Text(
                      locationNotes[index].title,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor),
                    ),
                  ),
                  Text(
                    locationNotes[index].notes,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Text(
                        locationNotes[index].authorName,
                        style: const TextStyle(
                            fontFamily: 'Dancing',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      // separatorBuilder: (BuildContext context, int index) {
      //   return Divider(
      //     color: Colors.grey.shade100,
      //   );
      // },
    );
  }
}
