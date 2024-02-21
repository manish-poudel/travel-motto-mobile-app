import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/models/travel_game_type/travel_game_type.dart';
import 'package:travel_motto/screens/travel_games/game_types/widgets/travel_game_type_list_item.dart';

class TravelGameNavigator extends StatelessWidget {
  final List<TravelGameType> featuredTravelGameType;
  const TravelGameNavigator({super.key, required this.featuredTravelGameType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Play travel games",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            GestureDetector(
              onTap: () {
                context.push('/travel_game_organisers');
              },
              child: Text(
                "See all",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SizedBox(
            height: 280,
            child: PageView.builder(
                itemCount: featuredTravelGameType.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.push('/travel_games',
                          extra: featuredTravelGameType[index]);
                    },
                    child: TravelGameTypeListItem(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: 280,
                        travelGameType: featuredTravelGameType[index]),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
