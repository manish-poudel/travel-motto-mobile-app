import 'package:flutter/material.dart';

import 'package:travel_motto/models/travel_game/travel_game.dart';

class TravelGamesListItem extends StatelessWidget {
  final TravelGame travelGame;
  final Function() onPressed;
  const TravelGamesListItem(
      {super.key, required this.travelGame, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      travelGame.photoUrl == null
          ? SizedBox.fromSize()
          : Stack(
              alignment: travelGame.passCode == null
                  ? Alignment.topRight
                  : Alignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        color: Colors.grey[600],
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(
                                  travelGame.passCode == null ? 0.9 : 0.4),
                              BlendMode.dstATop),
                          child: Image.network(
                            travelGame.photoUrl!,
                            fit: BoxFit.fill,
                            height: 320,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.location_pin,
                                color: Colors.red,
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    travelGame.fullAddress,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 8.0, bottom: 8.0),
                          child: TextButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.green),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16))),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                          horizontal: 8)),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap),
                              onPressed: onPressed,
                              icon: const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                              label: const Text(
                                "Play",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
                travelGame.passCode == null
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.0),
                                      offset: const Offset(0, -1),
                                      blurRadius: 1.0)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Reward: ${travelGame.points} points",
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                      )
                    : const Align(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            Text(
                              "Requires passcode",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
              ],
            ),

      // Padding(
      //   padding: const EdgeInsets.only(top: 8.0),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         "${travelGame.question}?",
      //         style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      //       ),
      //       SizedBox(
      //         child: SizedBox(
      //           child: Text(
      //             travelGame.notes,
      //             maxLines: 2,
      //             style: const TextStyle(
      //                 fontSize: 10, overflow: TextOverflow.ellipsis),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // )
    ]);
  }
}
