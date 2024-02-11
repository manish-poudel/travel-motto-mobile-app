import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/resources/constants.dart';

import 'package:travel_motto/screens/profile/register/bloc/profile_register_bloc.dart';
import 'package:travel_motto/screens/profile/widgets/basic_profile_form.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/utils/datetime_utils.dart';
import 'package:travel_motto/widgets/snackbar.dart';
import 'package:travel_motto/widgets/tm_drop_down_button.dart';
import 'package:travel_motto/widgets/tm_primary_button.dart';

class ProfileRegisterScreen extends StatefulWidget {
  const ProfileRegisterScreen({super.key});

  @override
  State<ProfileRegisterScreen> createState() => _ProfileRegisterScreenState();
}

class _ProfileRegisterScreenState extends State<ProfileRegisterScreen> {
  late final ProfileRegisterBloc _bloc;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController secondNameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  DropDownItem? genderSelection;
  late final DateTime dob;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<ProfileRegisterBloc>();
  }

  // Picks up travel date
  _pickUpDOB() async {
    DateTime now = DateTime.now();
    DateTime lastDate = DateTime(now.year - 18);
    DateTime initialDate =
        DateTime(lastDate.year, lastDate.month, lastDate.day);
    if (dobController.text.isNotEmpty) {
      initialDate =
          DateTimeUtils.getDateFromDateString(dobController.text.trim());
    }
    final DateTime? picked = await showDatePicker(
        builder: (context, child) {
          return Theme(data: AppTheme.getTheme(), child: child!);
        },
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(1900),
        lastDate: lastDate);
    if (picked != null) {
      dob = picked;
      dobController.text = DateTimeUtils.formattedDate(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.getTheme(),
      child: BlocConsumer<ProfileRegisterBloc, ProfileRegisterState>(
          builder: (context, state) {
        bool showLoading = state.whenOrNull(registering: () => true) ?? false;
        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: TMPrimaryButton(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: () {
              if (showLoading) {
                return;
              }
              if (firstNameController.text.isEmpty ||
                  secondNameController.text.isEmpty ||
                  dobController.text.isEmpty ||
                  genderSelection == null) {
                showSnackBar(
                    context, "Please fill all your information properly");
                return;
              }
              _bloc.add(ProfileRegisterEvent.register(
                  firstName: firstNameController.text.trim(),
                  lastName: secondNameController.text.trim(),
                  dob: dob,
                  gender: genderSelection!.value));
            },
            text: "SAVE",
            showLoading: showLoading,
          ),
          appBar: AppBar(
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  onPressed: () async {
                    FirebaseAuth.instance.signOut().then((value) {
                      context.go('/login');
                    });
                  },
                  icon: const Icon(Icons.logout))
            ],
          ),
          body: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Profile Information",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "You are one step away from starting your adventure. Just provide us your basic profile info and we are done!",
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: BasicProfileForm(
                  firstNameController: firstNameController,
                  secondNameController: secondNameController,
                  dobController: dobController,
                  genderController: genderController,
                  intialGenderSelection: genderSelection,
                  genders: ConstantResources.genders,
                  onTapDOB: () {
                    _pickUpDOB();
                  },
                  onGenderChanged: (gender) {
                    setState(() {
                      genderSelection = gender;
                    });
                  },
                ),
              ),
            ]),
          )),
        );
      }, listener: (context, state) {
        state.whenOrNull(registered: () {
          context.go('/home');
        }, failed: (message) {
          showSnackBar(context, message);
        });
      }),
    );
  }
}
