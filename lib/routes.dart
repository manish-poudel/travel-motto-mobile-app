import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/models/current_travel.dart/current_travel.dart';
import 'package:travel_motto/models/location_notes/location_notes.dart';
import 'package:travel_motto/models/open_street_location/os_location.dart';
import 'package:travel_motto/models/travel_game/travel_game.dart';
import 'package:travel_motto/models/travel_game_organiser.dart/travel_game_organiser.dart';
import 'package:travel_motto/repositories/repository_container.dart';
import 'package:travel_motto/screens/add_notes/add_note_screen.dart';
import 'package:travel_motto/screens/add_notes/bloc/add_note_bloc.dart';
import 'package:travel_motto/screens/change_password/bloc/change_password_bloc.dart';
import 'package:travel_motto/screens/change_password/change_password_screen.dart';
import 'package:travel_motto/screens/home/bloc/home_screen_bloc.dart';
import 'package:travel_motto/screens/home/home_screen.dart';
import 'package:travel_motto/screens/login/bloc/login_bloc.dart';
import 'package:travel_motto/screens/login/login_screen.dart';
import 'package:travel_motto/screens/notes_reader/bloc/notes_reader_bloc.dart';
import 'package:travel_motto/screens/notes_reader/notes_reader_screen.dart';
import 'package:travel_motto/screens/places/bloc/search_place_bloc.dart';
import 'package:travel_motto/screens/places/search_place_screen.dart';
import 'package:travel_motto/screens/profile/profile_photo_editor/bloc/profile_photo_editor_bloc.dart';
import 'package:travel_motto/screens/profile/profile_photo_editor/profile_photo_editor_screen.dart';
import 'package:travel_motto/screens/profile/register/bloc/profile_register_bloc.dart';
import 'package:travel_motto/screens/profile/register/profile_register_screen.dart';
import 'package:travel_motto/screens/scan_notes/bloc/scan_notes_bloc.dart';
import 'package:travel_motto/screens/scan_notes/models/enums.dart';
import 'package:travel_motto/screens/scan_notes/scan_notes_screen.dart';
import 'package:travel_motto/screens/settings/settings_view.dart';
import 'package:travel_motto/screens/signup/bloc/signup_bloc.dart';
import 'package:travel_motto/screens/signup/signup_screen.dart';
import 'package:travel_motto/screens/splash/splash_screen.dart';
import 'package:travel_motto/screens/travel/create_travel/bloc/create_travel_bloc.dart';
import 'package:travel_motto/screens/travel/create_travel/create_travel_screen.dart';
import 'package:travel_motto/screens/travel/current_travel/bloc/current_travel_bloc.dart';
import 'package:travel_motto/screens/travel/current_travel/current_travel_screen.dart';
import 'package:travel_motto/screens/travel/history/bloc/travel_history_bloc.dart';
import 'package:travel_motto/screens/travel/history/travel_history_screen.dart';
import 'package:travel_motto/screens/travel_games/game_types/bloc/travel_game_types_bloc.dart';
import 'package:travel_motto/screens/travel_games/game_types/travel_game_types_screen.dart';
import 'package:travel_motto/screens/travel_games/organisers/bloc/travel_game_organiser_bloc.dart';
import 'package:travel_motto/screens/travel_games/organisers/travel_game_organiser_screen.dart';
import 'package:travel_motto/screens/travel_games/play/bloc/play_travel_game_bloc.dart';
import 'package:travel_motto/screens/travel_games/play/play_travel_game_screen.dart';
import 'package:travel_motto/screens/travel_games/view/bloc/travel_games_bloc.dart';
import 'package:travel_motto/screens/travel_games/view/travel_games_screen.dart';
import 'package:travel_motto/services/auth/bloc/auth_bloc.dart';
import 'package:travel_motto/services/firebase_storage/firebase_storage_services.dart';

/// The route configuration.
final GoRouter routes = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
        name: 'splash',
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (_) => AuthBloc(
                auth: FirebaseAuth.instance,
                travellerProfileRepository: context
                    .read<RepositoryContainer>()
                    .travellerProfileRepository),
            child: const SplashScreen(),
          );
        }),
    GoRoute(
        name: 'login',
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (_) => LoginBloc(),
            child: const LoginScreen(),
          );
        }),
    GoRoute(
        name: 'signup',
        path: '/signup',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (_) => SignupBloc(),
            child: const SignUpScreen(),
          );
        }),
    GoRoute(
        name: 'register',
        path: '/register',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (_) => ProfileRegisterBloc(
                travellerProfileRepository: context
                    .read<RepositoryContainer>()
                    .travellerProfileRepository),
            child: const ProfileRegisterScreen(),
          );
        }),
    GoRoute(
        name: 'profile_photo_editor',
        path: '/profile_photo_editor',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (_) => ProfilePhotoEditorBloc(
                firebaseStorageServices: FirebaseStorageServices(),
                travellerProfileRepository: context
                    .read<RepositoryContainer>()
                    .travellerProfileRepository),
            child: const ProfilePhotoEditorScreen(),
          );
        }),
    GoRoute(
        name: 'home',
        path: '/home',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
              create: (_) => HomeScreenBloc(
                  travellerProfileRepository: context
                      .read<RepositoryContainer>()
                      .travellerProfileRepository,
                  currentTravelRepository: context
                      .read<RepositoryContainer>()
                      .currentTravelRepository,
                  locationRepository:
                      context.read<RepositoryContainer>().locationRepository),
              child: const HomeScreen());
        }),
    GoRoute(
        name: 'search_place',
        path: '/search_place',
        builder: (BuildContext context, GoRouterState state) {
          String query = state.extra as String;
          return BlocProvider(
              create: (_) => SearchPlaceBloc(
                  query: query,
                  osMapRepository:
                      context.read<RepositoryContainer>().osMapRepository),
              child: const SearchPlaceScreen());
        }),
    GoRoute(
        name: 'add_note',
        path: '/add_note',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
              create: (_) => AddNoteBloc(
                    notesRepository: context
                        .read<RepositoryContainer>()
                        .locationNotesRepository,
                    locationRepository:
                        context.read<RepositoryContainer>().locationRepository,
                  ),
              child: const AddNoteScreen());
        }),
    GoRoute(
        name: 'scan_note',
        path: '/scan_note',
        builder: (BuildContext context, GoRouterState state) {
          ScanLocationNotesType type = state.extra as ScanLocationNotesType;
          return BlocProvider(
              create: (_) => ScanNotesBloc(
                    notesRepository: context
                        .read<RepositoryContainer>()
                        .locationNotesRepository,
                    locationRepository:
                        context.read<RepositoryContainer>().locationRepository,
                  ),
              child: ScanNotesScreen(type: type));
        }),
    GoRoute(
        name: 'note_reader',
        path: '/note_reader',
        builder: (BuildContext context, GoRouterState state) {
          LocationNotes locationNotes = state.extra as LocationNotes;
          return BlocProvider(
              create: (_) => NotesReaderBloc(
                    locationNotes: locationNotes,
                  ),
              child: const NotesReaderScreen());
        }),
    GoRoute(
        name: 'travel_history',
        path: '/travel_history',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
              create: (_) => TravelHistoryBloc(
                  travelsRepository:
                      context.read<RepositoryContainer>().travelsRepository),
              child: const TravelHistoryScreen());
        }),
    GoRoute(
        name: 'change_password',
        path: '/change_password',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
              create: (_) => ChangePasswordBloc(),
              child: const ChangePasswordScreen());
        }),
    GoRoute(
        name: 'travel_games',
        path: '/travel_games',
        builder: (BuildContext context, GoRouterState state) {
          String organiserId = state.extra as String;
          return BlocProvider(
              create: (_) => TravelGamesBloc(
                  travelGamesRepository:
                      context.read<RepositoryContainer>().travelGamesRepository,
                  organiserId: organiserId),
              child: const TravelGamesScreen());
        }),
    GoRoute(
        name: 'travel_game_organisers',
        path: '/travel_game_organisers',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
              create: (_) => TravelGameOrganiserBloc(
                  travelGamesRepository: context
                      .read<RepositoryContainer>()
                      .travelGamesRepository),
              child: const TravelGameOrganiserScreen());
        }),
    GoRoute(
        name: 'travel_game_types',
        path: '/travel_game_types',
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
              create: (_) => TravelGameTypesBloc(
                  travelGameOrganiser: state.extra as TravelGameOrganiser,
                  travelGamesRepository: context
                      .read<RepositoryContainer>()
                      .travelGamesRepository),
              child: const TravelGameTypeScreen());
        }),
    GoRoute(
        name: 'play_travel_game_screen',
        path: '/play_travel_game_screen',
        builder: (BuildContext context, GoRouterState state) {
          final TravelGame travelGame = state.extra as TravelGame;

          return BlocProvider(
              create: (_) => PlayTravelGameBloc(
                  locationRepository:
                      context.read<RepositoryContainer>().locationRepository,
                  travelGame: travelGame),
              child: const PlayTravelGameScreen());
        }),
    GoRoute(
        name: 'create_travel',
        path: '/create_travel',
        builder: (BuildContext context, GoRouterState state) {
          OSLocation? osLocation = state.extra as OSLocation;
          return BlocProvider(
              create: (_) => CreateTravelBloc(
                  destination: osLocation,
                  travellerProfileRepository: context
                      .read<RepositoryContainer>()
                      .travellerProfileRepository,
                  currentTravelRepository: context
                      .read<RepositoryContainer>()
                      .currentTravelRepository,
                  travelsRepository:
                      context.read<RepositoryContainer>().travelsRepository,
                  locationRepository:
                      context.read<RepositoryContainer>().locationRepository),
              child: const CreateTravelScreen());
        }),
    GoRoute(
        name: 'settings',
        path: '/settings',
        builder: (BuildContext context, GoRouterState state) {
          return const SettingsView();
        }),
    GoRoute(
        name: 'current_travel',
        path: '/current_travel',
        builder: (BuildContext context, GoRouterState state) {
          CurrentTravel currentTravel = state.extra as CurrentTravel;
          return BlocProvider(
              create: (_) => CurrentTravelBloc(
                    locationRepository:
                        context.read<RepositoryContainer>().locationRepository,
                    currentTravelRepository: context
                        .read<RepositoryContainer>()
                        .currentTravelRepository,
                    travelsRepository:
                        context.read<RepositoryContainer>().travelsRepository,
                    currentTravel: currentTravel,
                  ),
              child: const CurrentTravelScreen());
        }),
  ],
);
