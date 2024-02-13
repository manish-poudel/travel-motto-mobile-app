import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/screens/places/bloc/search_place_bloc.dart';
import 'package:travel_motto/screens/places/widgets/places_listitem.dart';

import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/widgets/loading_message.dart';

class SearchPlaceScreen extends StatefulWidget {
  const SearchPlaceScreen({super.key});

  @override
  State<SearchPlaceScreen> createState() => _SearchPlaceScreenState();
}

class _SearchPlaceScreenState extends State<SearchPlaceScreen> {
  late final SearchPlaceBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<SearchPlaceBloc>();
    _bloc.add(const SearchPlaceEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: AppTheme.getTheme(),
        child: BlocConsumer<SearchPlaceBloc, SearchPlaceState>(
            builder: (context, state) {
              return state.whenOrNull(initial: () {
                    return const Scaffold(
                        backgroundColor: Colors.white,
                        body: LoadingMessage(
                          title: "Searching your place for the next adventure",
                        ));
                  }, ready: (osLocations, selectedOSLocation) {
                    return Scaffold(
                        backgroundColor: Colors.white,
                        bottomNavigationBar: TextButton(
                            onPressed: () {
                              context.push('/create_travel',
                                  extra: selectedOSLocation);
                            },
                            child: const Text(
                              "CREATE TRAVEL",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        appBar: AppBar(
                            leading: IconButton(
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  size: 16,
                                ),
                                onPressed: () => Navigator.of(context).pop()),
                            backgroundColor: Colors.white,
                            title: const Text(
                              "Places",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal),
                            )),
                        body: Column(children: [
                          const SizedBox(
                            width: double.infinity,
                            // color:
                            //     Theme.of(context).appBarTheme.backgroundColor,
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Please select place from this list for better accuracy",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black87),
                                  ),
                                  Text(
                                    "Search powered by OpenStreetMap",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black54),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: osLocations.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: PlaceListItem(
                                      onTap: () => _bloc.add(
                                          SearchPlaceEvent.select(
                                              osLocation: osLocations[index])),
                                      isSelected: selectedOSLocation ==
                                          osLocations[index],
                                      location: osLocations[index],
                                    ),
                                  );
                                }),
                          )
                        ]));
                  }) ??
                  const SizedBox.shrink();
            },
            listener: (context, state) {}));
  }
}
