import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:travel_motto/repositories/repository_container.dart';
import 'package:travel_motto/routes.dart';

import 'package:travel_motto/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String flavor = const String.fromEnvironment('flavor');

  if (flavor == "prod") {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: 'AIzaSyBbBxMSqpIbFTYuhjAuLsF3Un9iIsKPvoM',
      appId: '1:860150173112:android:5609c3122243e7e9bdd34d',
      messagingSenderId: '860150173112',
      projectId: 'travel-motto',
      storageBucket: 'travel-motto.appspot.com',
    ));
  } else {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: 'AIzaSyAHYVhk9a5wRhUBEoVVZD5ADcUExLXD5aM',
      appId: '1:452128110382:android:c02afa60a1147a03abecbf',
      messagingSenderId: '452128110382',
      projectId: 'travelmotto-dev',
      storageBucket: 'travelmotto-dev.appspot.com',
    ));
  }

  runApp(MultiProvider(providers: [
    RepositoryProvider(create: (_) => RepositoryContainer()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.getTheme(),
        debugShowCheckedModeBanner: false,
        title: 'TravelMotto',
        home: MaterialApp.router(
            debugShowCheckedModeBanner: false, routerConfig: routes));
  }
}
