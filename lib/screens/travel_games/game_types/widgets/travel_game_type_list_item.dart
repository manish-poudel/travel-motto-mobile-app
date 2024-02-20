import 'package:flutter/material.dart';
import 'package:travel_motto/models/travel_game_type/travel_game_type.dart';

class TravelGameTypeListItem extends StatelessWidget {
  final TravelGameType travelGameType;
  final double width;
  final double height;
  const TravelGameTypeListItem(
      {super.key,
      required this.travelGameType,
      this.height = 120,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomRight, children: [
      Padding(
        padding: const EdgeInsets.all(0.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Container(
            color: Colors.grey[100],
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif',
              placeholderFit: BoxFit.scaleDown,
              image: travelGameType.photoUrl,
              height: height,
              width: width,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.0),
                      offset: const Offset(0, -1),
                      blurRadius: 1.0)
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    travelGameType.name,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  travelGameType.organiserName == null
                      ? const SizedBox.shrink()
                      : Text(
                          "by ${travelGameType.organiserName!}",
                          style: const TextStyle(
                              fontSize: 10, color: Colors.white),
                        ),
                ],
              ),
            )),
      ),
    ]);
  }
}
