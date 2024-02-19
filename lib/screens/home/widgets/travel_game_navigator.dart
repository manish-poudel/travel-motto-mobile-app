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
              "Featured travel games",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Roboto'),
            ),
            GestureDetector(
              onTap: () {
                context.push('/travel_game_organisers');
              },
              child: Text(
                "View more",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SizedBox(
            height: 120,
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
                        travelGameType: featuredTravelGameType[index]),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
