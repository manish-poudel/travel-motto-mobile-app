import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/models/travel_game/travel_game.dart';

class TravelGamesListItem extends StatelessWidget {
  final TravelGame travelGame;
  const TravelGamesListItem({super.key, required this.travelGame});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      travelGame.photoUrl == null
          ? SizedBox.fromSize()
          : Container(
              color: Colors.white,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      color: Colors.grey[100],
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.7), BlendMode.dstATop),
                        child: Image.network(
                          travelGame.photoUrl!,
                          fit: BoxFit.fitWidth,
                          height: 240,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                      child: TextButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16))),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(horizontal: 8)),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                          onPressed: () {
                            context.push('/play_travel_game_screen',
                                extra: travelGame);
                          },
                          icon: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                          label: const Text(
                            "Play",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  )
                ],
              ),
            ),
      Padding(
        padding: const EdgeInsets.only(left: 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${travelGame.question}?",
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              child: SizedBox(
                child: Text(
                  travelGame.notes,
                  maxLines: 2,
                  style: const TextStyle(
                      fontSize: 10, overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
