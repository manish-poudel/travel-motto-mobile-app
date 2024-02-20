import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:travel_motto/widgets/tm_rounded_textfield.dart';

class SearchPlace extends StatelessWidget {
  SearchPlace({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 38.0, left: 21, right: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Ready your for next\nadventure?",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text("Let's begin by creating your travel",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.black54)),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 24, right: 24),
              child: TMRoundedTextField(
                  controller: searchController,
                  fillColor: Colors.grey.shade200,
                  borderColor: Colors.grey.shade200,
                  contentPadding: const EdgeInsets.all(21),
                  borderRadius: 12,
                  hintText: "Search",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(0.6)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: GestureDetector(
                            onTap: () {
                              if (searchController.text.isNotEmpty) {
                                context.push('/search_place',
                                    extra: searchController.text.trim());
                              }
                            },
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ))),

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
