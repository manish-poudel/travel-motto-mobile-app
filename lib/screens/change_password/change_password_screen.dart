import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/screens/change_password/bloc/change_password_bloc.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/widgets/screen_title.dart';
import 'package:travel_motto/widgets/snackbar.dart';
import 'package:travel_motto/widgets/tm_textfield.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late final ChangePasswordBloc _bloc;
  late final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc = context.read<ChangePasswordBloc>();
    _bloc.add(const ChangePasswordEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.getTheme(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
              onPressed: () => Navigator.of(context).pop()),
          backgroundColor: Colors.white,
        ),
        body: BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
          builder: (context, state) {
            return state.whenOrNull(ready: (email, saveState) {
                  bool isSaving =
                      saveState.whenOrNull(saving: () => true) ?? false;
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ScreenTitle(
                            title: "Change password",
                            subtitle: email != null
                                ? "We'll send the password reset link to your email."
                                : "Kindly provide your email address so we can send you the link to reset your password.",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: TMTextField(
                              controller: _emailController,
                              hintText: "Email address",
                              readOnly: email != null,
                              fontSize: 12,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                                onPressed: () {
                                  if (_emailController.text.isEmpty) {
                                    showSnackBar(
                                        context, "Please type your email");
                                    return;
                                  }
                                  _bloc.add(ChangePasswordEvent.sendEmail(
                                      email: _emailController.text));
                                },
                                child: isSaving
                                    ? const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                              height: 12,
                                              width: 12,
                                              child:
                                                  CircularProgressIndicator()),
                                          Padding(
                                            padding: EdgeInsets.only(left: 8.0),
                                            child: Text("Sending",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ],
                                      )
                                    : const Text(
                                        "SEND",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                          )
                        ]),
                  );
                }) ??
                const SizedBox.shrink();
          },
          listener: (context, state) {
            state.whenOrNull(ready: (email, saveState) {
              _emailController.text = email ?? "";
              saveState.whenOrNull(failed: (message) {
                showSnackBar(context, message);
              }, saved: () {
                showSnackBar(context, "Email sent");
                if (email != null) {
                  FirebaseAuth.instance.signOut();
                  context.go('/login');
                }
              });
            });
          },
        ),
      ),
    );
  }
}
