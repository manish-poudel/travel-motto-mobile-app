import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/models/current_travel_stream_data/current_travel_stream_data.dart';
import 'package:travel_motto/repositories/current_travel_repository.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/screens/home/bloc/home_screen_bloc.dart';
import 'package:travel_motto/screens/home/widgets/app_bar.dart';
import 'package:travel_motto/screens/home/widgets/search_place.dart';
import 'package:travel_motto/screens/home/widgets/your_current_travel.dart';
import 'package:travel_motto/screens/home/widgets/your_location.dart';
import 'package:travel_motto/screens/scan_notes/models/enums.dart';

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
            return state.whenOrNull(ready: (locationState) {
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 36, right: 36),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 32.0),
                                        child: TextButton(
                                            style: ButtonStyle(
                                                elevation: MaterialStateProperty.all(
                                                    18),
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Theme.of(context)
                                                            .primaryColor
                                                            .withOpacity(1)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                18.0),
                                                        side: BorderSide(color: Theme.of(context).primaryColor.withOpacity(1))))),
                                            onPressed: () {
                                              context.push('/add_note');
                                            },
                                            child: const Text(
                                              "Leave note at your current location",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                      ),
                                    )),
                                SizedBox(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0.0,
                                        left: 36,
                                        right: 36,
                                        bottom: 16.0),
                                    child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                    side: BorderSide(
                                                        color: Theme.of(context)
                                                            .primaryColor
                                                            .withOpacity(1))))),
                                        onPressed: () {
                                          context.push('/scan_note',
                                              extra:
                                                  ScanLocationNotesType.public);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Icon(Icons.search),
                                            Text(
                                              "Scan notes",
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor
                                                      .withOpacity(1)),
                                            ),
                                          ],
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 16.0,
                                    left: 36,
                                    right: 36,
                                    bottom: 32.0),
                                child: TextButton(
                                    style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all(18),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                                side: const BorderSide(
                                                    color: Colors.white)))),
                                    onPressed: () {
                                      context.push('/travel_game_organisers');
                                    },
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 8.0),
                                          child: Icon(
                                            Icons.games,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Text(
                                          "Play travel games",
                                          style: TextStyle(color: Colors.green),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ))),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: YourLocation(locationState: locationState),
                        ),
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
            }, ready: (locationState) {
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
