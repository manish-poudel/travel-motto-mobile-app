import 'package:flutter/material.dart';
import 'package:travel_motto/models/travel_game_type/travel_game_type.dart';

class TravelGameTypeListItem extends StatelessWidget {
  final TravelGameType travelGameType;
  const TravelGameTypeListItem({super.key, required this.travelGameType});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomRight, children: [
      Padding(
        padding: const EdgeInsets.all(0.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Container(
            color: Colors.grey[100],
            child: Image.network(
              travelGameType.photoUrl,
              height: 120,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: const Offset(0, -1),
                      blurRadius: 1.0)
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                travelGameType.name,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )),
      ),
    ]);
  }
}
