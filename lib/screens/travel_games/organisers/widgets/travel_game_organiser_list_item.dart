import 'package:flutter/material.dart';
import 'package:travel_motto/models/travel_game_organiser.dart/travel_game_organiser.dart';

class TravelGameOrganiserListItem extends StatelessWidget {
  final TravelGameOrganiser travelGameOrganiser;
  const TravelGameOrganiserListItem(
      {super.key, required this.travelGameOrganiser});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Container(
                color: Colors.grey[100],
                child: Image.network(
                  travelGameOrganiser.photoUrl,
                  height: 80,
                  width: 80,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Text(
            travelGameOrganiser.name,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          )
        ]);
  }
}
