import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/widgets/tm_primary_button.dart';

class SearchPlace extends StatelessWidget {
  SearchPlace({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 21.0),
        child: Center(
          child: Image.asset(
            TravellerProfileRepository.profile.gender == "Female"
                ? 'assets/images/woman.png'
                : 'assets/images/man.png',
            height: 200,
            width: 200,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Ready for next adventure?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.8),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text("Begin by searching your place",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black.withOpacity(0.4),
                )),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
        child: TextField(
          controller: searchController,
          style: const TextStyle(fontSize: 14),
          cursorColor: Theme.of(context).primaryColor,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.6)),
              borderRadius: BorderRadius.circular(0.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).primaryColor, width: 2),
              borderRadius: BorderRadius.circular(0.0),
            ),
            filled: true,
            hintStyle: TextStyle(
                color: Theme.of(context).primaryColor.withOpacity(0.8),
                fontSize: 12,
                fontWeight: FontWeight.w400),
            hintText: "Search place",
            fillColor: Theme.of(context).primaryColor.withOpacity(0.03),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TMPrimaryButton(
                text: "Search",
                backgroundColor: Theme.of(context).primaryColor,
                borderColor: Theme.of(context).primaryColor,
                borderWidth: 2,
                onPressed: () {
                  if (searchController.text.isNotEmpty) {
                    context.push('/search_place',
                        extra: searchController.text.trim());
                  }
                })),
      )
      // Align(
      //   alignment: Alignment.topRight,
      //   child: Padding(
      //     padding: const EdgeInsets.only(top: 0.0),
      //     child: TextButton(
      //         style: ButtonStyle(
      //             backgroundColor:
      //                 MaterialStateProperty.all(Colors.transparent),
      //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //                 RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(0.0),
      //                     side: const BorderSide(color: Colors.transparent)))),
      //         onPressed: () {
      //           if (searchController.text.isNotEmpty) {
      //             context.push('/search_place',
      //                 extra: searchController.text.trim());
      //           }
      //         },
      //         child: Text(
      //           "Search",
      //           style: TextStyle(
      //               color: Theme.of(context).primaryColor,
      //               fontSize: 15,
      //               fontWeight: FontWeight.bold),
      //         )),
      //   ),
      // )
    ]);
  }
}
