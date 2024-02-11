import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:travel_motto/firebase_options.dart';
import 'package:travel_motto/repositories/repository_container.dart';
import 'package:travel_motto/routes.dart';

import 'package:travel_motto/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
        home: MaterialApp.router(routerConfig: routes));
  }
}
