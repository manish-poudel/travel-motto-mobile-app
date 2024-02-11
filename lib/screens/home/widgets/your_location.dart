import 'package:flutter/material.dart';

import 'package:travel_motto/screens/home/bloc/home_screen_bloc.dart';

class YourLocation extends StatelessWidget {
  final LocationState locationState;
  const YourLocation({super.key, required this.locationState});

  @override
  Widget build(BuildContext context) {
    return locationState.whenOrNull(fetching: () {
          return Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_pin,
                  size: 28,
                  color: Colors.red.withOpacity(0.6),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "fetching your location...",
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          );
        }, fetched: (travelLocation) {
          return Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Icon(
                        Icons.location_pin,
                        size: 28,
                        color: Colors.red.withOpacity(0.6),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: '',
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: travelLocation
                                            .getReadableLocation(),
                                        style: const TextStyle(fontSize: 12)),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        }) ??
        const SizedBox.shrink();
  }
}
