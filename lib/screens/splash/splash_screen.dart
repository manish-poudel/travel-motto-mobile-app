import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/screens/splash/widgets/profile_loading.dart';
import 'package:travel_motto/services/auth/bloc/auth_bloc.dart';
import 'package:travel_motto/widgets/blur_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late AuthBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = context.read<AuthBloc>();
    _bloc.add(const AuthEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlurBackground(
            color: Colors.black.withOpacity(0.4),
            widget:
                BlocConsumer<AuthBloc, AuthState>(builder: (context, state) {
              bool isLoadingProfile =
                  state.whenOrNull(loadingProfile: () => true) ?? false;
              return Center(child: ProfileLoading(showText: isLoadingProfile));
            }, listener: (context, state) {
              state.whenOrNull(loggedIn: (User user) {
                // if logged in then ,get profile
                _bloc.add(AuthEvent.getProfile(travellerId: user.uid));
              }, loggedOut: () {
                context.go('/login');
              }, profileLoaded: () {
                context.go('/home');
              }, noProfile: () {
                context.go('/register');
              });
            })));
  }
}
