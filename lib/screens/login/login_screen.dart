import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/screens/login/bloc/login_bloc.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/widgets/password_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc _bloc;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordInvisibility = ValueNotifier(true);
  @override
  void initState() {
    super.initState();
    _bloc = context.read<LoginBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.getTheme(),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bouddha.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.4)),
                    ))),
            BlocConsumer<LoginBloc, LoginState>(builder: (context, state) {
              bool isLoggin = state.whenOrNull(logging: () => true) ?? false;
              return SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 32.0,
                              right: 32.0,
                              top: MediaQuery.of(context).size.height * 0.18),
                          child: const Text(
                            "TravelMotto",
                            style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 32,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 32.0, right: 32, top: 70),
                        child: Text(
                          "Welcome back,\nLet's continue your great adventure!\n",
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "EMAIL",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                              TextField(
                                style: const TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                  decorationThickness: 0,
                                ),
                                controller: _emailController,
                                decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 32.0),
                                child: Text(
                                  "PASSWORD",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              ValueListenableBuilder(
                                  valueListenable: _passwordInvisibility,
                                  builder: (context, value, child) {
                                    return PasswordInput(
                                        controller: _passwordController,
                                        onSuffixIconPressed: () {
                                          _passwordInvisibility.value = !value;
                                        },
                                        obscureText: value);
                                  }),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ))),
                                    onPressed: () {
                                      context.push('/change_password');
                                    },
                                    child: const Text(
                                      "Forgot password",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 24.0),
                                child: Center(
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    const Color(0xffE09132)),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    side: const BorderSide(
                                                        color: Color(
                                                            0xffE09132))))),
                                        onPressed: () {
                                          if (!isLoggin) {
                                            _bloc.add(LoginEvent.logIn(
                                                email: _emailController.text
                                                    .trim(),
                                                password: _passwordController
                                                    .text
                                                    .trim()));
                                          }
                                        },
                                        child: isLoggin
                                            ? const SizedBox(
                                                height: 12,
                                                width: 12,
                                                child:
                                                    CircularProgressIndicator(
                                                  strokeWidth: 2,
                                                  color: Colors.white,
                                                ),
                                              )
                                            : const Text(
                                                "Enter",
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              )),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 38.0),
                                child: Row(children: <Widget>[
                                  Expanded(
                                      child: Divider(
                                    color: Colors.white,
                                    height: 1,
                                  )),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text("OR",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white)),
                                  ),
                                  Expanded(
                                      child: Divider(
                                    color: Colors.white,
                                    height: 1,
                                  )),
                                ]),
                              ),
                              Center(
                                child: SizedBox(
                                  width: double.infinity,
                                  child: TextButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ))),
                                      onPressed: () {
                                        context.go('/signup');
                                      },
                                      child: const Text(
                                        "Are you a new traveler? create account",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]),
                      )
                    ]),
              );
            }, listener: (context, state) {
              state.whenOrNull(error: (message) {
                var snackBar = SnackBar(
                  content: Text(message),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }, loggedIn: () {
                context.go('/');
              });
            })
          ],
        ),
      ),
    );
  }
}
