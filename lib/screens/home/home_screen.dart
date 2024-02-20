import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
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
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            elevation: 12,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
                // backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.gamepad,
                  color: Colors.black54,
                ),
                label: 'Travel Games',
                // backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.note_add,
                  color: Colors.black54,
                ),
                label: 'Leave note',
                //  backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.find_in_page,
                  color: Colors.black54,
                ),
                label: 'Scan note',
                // backgroundColor: Colors.purple,
              ),
            ],
            currentIndex: 0,
            onTap: (index) {
              if (index == 1) {
                context.push('/travel_game_organisers');
              }
              if (index == 2) {
                context.push('/add_note');
              }
              if (index == 3) {
                context.push('/scan_note', extra: ScanLocationNotesType.public);
              }
            }),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 38.0, left: 21, right: 21, bottom: 16),
              child: StreamBuilder(
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
                  }),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: BlocConsumer<HomeScreenBloc, HomeScreenState>(
                  builder: (BuildContext context, HomeScreenState state) {
                    return state.whenOrNull(
                            ready: (featuredTravelGameType, locationState) {
                          return Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                YourLocation(locationState: locationState),
                                StreamBuilder(
                                    stream: _bloc.currentTravelRepository
                                        .currentTravelStream,
                                    initialData: CurrentTravelRepository
                                        .currentTravelStreamData,
                                    builder: (_, snapshot) {
                                      CurrentTravelStreamData
                                          currentTravelStreamData =
                                          snapshot.data!;
                                      if (currentTravelStreamData.process ==
                                          StreamProcess.done) {
                                        return currentTravelStreamData
                                                    .currentTravel ==
                                                null
                                            ? SearchPlace()
                                            : GestureDetector(
                                                onTap: () {
                                                  context.push(
                                                      '/current_travel',
                                                      extra:
                                                          currentTravelStreamData
                                                              .currentTravel!);
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      21.0),
                                                  child: YourCurrentTravel(
                                                      onViewPhoto: () {
                                                        _bloc
                                                            .currentTravelRepository
                                                            .addTravelPhoto();
                                                      },
                                                      onStopViewPhoto: () {},
                                                      currentTravel:
                                                          currentTravelStreamData
                                                              .currentTravel!),
                                                ),
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
                                                  child:
                                                      CircularProgressIndicator(
                                                    strokeWidth: 1,
                                                  )),
                                            ],
                                          ));
                                    }),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 21.0,
                                      right: 21.0,
                                      top: 38.0,
                                      bottom: 21),
                                  child: TravelGameNavigator(
                                    featuredTravelGameType:
                                        featuredTravelGameType,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 21.0, top: 0),
                                  child: locationState.whenOrNull(
                                          fetched: (travelLocation) {
                                        return NoteNavigator(
                                          fullAddress: travelLocation
                                              .getReadableLocation(),
                                        );
                                      }) ??
                                      const NoteNavigator(),
                                )
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
            ),
          ],
        ),
      ),
    );
  }
}
