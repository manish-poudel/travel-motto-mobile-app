import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:travel_motto/models/current_travel_stream_data/current_travel_stream_data.dart';
import 'package:travel_motto/repositories/current_travel_repository.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/screens/home/bloc/home_screen_bloc.dart';
import 'package:travel_motto/screens/home/widgets/app_bar.dart';
import 'package:travel_motto/screens/home/widgets/note_navigator.dart';
import 'package:travel_motto/screens/home/widgets/search_place.dart';
import 'package:travel_motto/screens/home/widgets/travel_game_navigator.dart';
import 'package:travel_motto/screens/home/widgets/your_current_travel.dart';
import 'package:travel_motto/screens/home/widgets/your_location.dart';

import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/widgets/snackbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeScreenBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = context.read<HomeScreenBloc>();
    _bloc.add(const HomeScreenEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.getTheme(),
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight * 1.08),
            child: AppBar(
                title: StreamBuilder(
                    stream:
                        _bloc.travellerProfileRepository.travellerProfileStream,
                    initialData: TravellerProfileRepository.profile,
                    builder: (context, snapshot) {
                      if (snapshot.hasData && snapshot.data != null) {
                        return TopAppBar(
                          travellerName: snapshot.data!.firstName,
                          travellerPhotoUrl: snapshot.data!.photoUrl,
                        );
                      }
                      return const SizedBox.shrink();
                    }))),
        body: BlocConsumer<HomeScreenBloc, HomeScreenState>(
          builder: (BuildContext context, HomeScreenState state) {
            return state.whenOrNull(
                    ready: (featuredTravelGameType, locationState) {
                  return Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(
                            child: SingleChildScrollView(
                                child: Column(
                          children: [
                            StreamBuilder(
                                stream: _bloc.currentTravelRepository
                                    .currentTravelStream,
                                initialData: CurrentTravelRepository
                                    .currentTravelStreamData,
                                builder: (_, snapshot) {
                                  CurrentTravelStreamData
                                      currentTravelStreamData = snapshot.data!;
                                  if (currentTravelStreamData.process ==
                                      StreamProcess.done) {
                                    return currentTravelStreamData
                                                .currentTravel ==
                                            null
                                        ? SearchPlace()
                                        : Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: YourCurrentTravel(
                                                onViewPhoto: () {
                                                  _bloc.currentTravelRepository
                                                      .addTravelPhoto();
                                                },
                                                onStopViewPhoto: () {},
                                                currentTravel:
                                                    currentTravelStreamData
                                                        .currentTravel!),
                                          );
                                  }
                                  return const SizedBox(
                                      height: 400,
                                      width: 400,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              height: 20,
                                              width: 20,
                                              child: CircularProgressIndicator(
                                                strokeWidth: 1,
                                              )),
                                        ],
                                      ));
                                }),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 16.0, top: 38.0),
                              child: TravelGameNavigator(
                                featuredTravelGameType: featuredTravelGameType,
                              ),
                            ),
                            locationState.whenOrNull(fetched: (travelLocation) {
                                  return NoteNavigator(
                                    fullAddress:
                                        travelLocation.getReadableLocation(),
                                  );
                                }) ??
                                const NoteNavigator()
                          ],
                        ))),
                      ],
                    ),
                  );
                }, initial: () {
                  return const CircularProgressIndicator();
                }) ??
                const SizedBox.shrink();
          },
          listener: (BuildContext context, HomeScreenState state) {
            state.whenOrNull(error: (message) {
              //todo(mp-truenary): get error message
              showSnackBar(context, message);
            }, ready: (_, locationState) {
              locationState.whenOrNull(idle: () async {
                LocationPermission permission;
                if (!await Geolocator.isLocationServiceEnabled()) {
                  // todo(manish: ask for enabling services
                  return;
                }
                permission = await Geolocator.checkPermission();
                if (permission == LocationPermission.denied) {
                  // ask for permission
                  permission = await Geolocator.requestPermission();
                  if (permission == LocationPermission.denied) {
                    // todo(manish): show dialog why it is necessary
                    return;
                  }
                }
                if (permission == LocationPermission.deniedForever) {
                  // todo(manish): show dialog why it is necessary
                  return;
                }

                // if everything is set time to ask for location
                _bloc.add(const HomeScreenEvent.getCurrentLocation());
              });
            });
          },
        ),
      ),
    );
  }
}
