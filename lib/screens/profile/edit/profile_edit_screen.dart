import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/resources/constants.dart';
import 'package:travel_motto/screens/profile/edit/bloc/profile_edit_bloc.dart';
import 'package:travel_motto/screens/profile/widgets/basic_profile_form.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/utils/datetime_utils.dart';
import 'package:travel_motto/utils/launcher_utils.dart';
import 'package:travel_motto/widgets/snackbar.dart';
import 'package:travel_motto/widgets/tm_drop_down_button.dart';
import 'package:travel_motto/widgets/tm_primary_button.dart';
import 'package:travel_motto/widgets/tm_rounded_textfield.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  late final ProfileEditBloc _bloc;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController secondNameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController rankController = TextEditingController();
  DropDownItem? genderSelection;
  late DateTime dob;

  // Picks up travel date
  _pickUpDOB() async {
    DateTime now = DateTime.now();
    DateTime lastDate = DateTime(now.year - 16);
    final DateTime? picked = await showDatePicker(
        builder: (context, child) {
          return Theme(data: AppTheme.getTheme(), child: child!);
        },
        context: context,
        initialDate: dob,
        firstDate: DateTime(1900),
        lastDate: lastDate);
    if (picked != null) {
      dob = picked;
      dobController.text = DateTimeUtils.formattedDate(picked);
    }
  }

  @override
  void initState() {
    super.initState();
    _bloc = context.read<ProfileEditBloc>();
    firstNameController.text = TravellerProfileRepository.profile.firstName;
    secondNameController.text = TravellerProfileRepository.profile.lastName;
    dob = TravellerProfileRepository.profile.dob;
    dobController.text =
        DateTimeUtils.formattedDate(TravellerProfileRepository.profile.dob);
    rankController.text = "Rank: ${TravellerProfileRepository.profile.rank}";
    genderSelection = ConstantResources.genders.firstWhere((element) =>
        element.value == TravellerProfileRepository.profile.gender);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileEditBloc, ProfileEditState>(
      listener: (context, state) {
        state.whenOrNull(failed: (message) {
          showSnackBar(context, message);
        }, registered: () {
          Navigator.of(context).pop();
        });
      },
      builder: (context, state) {
        bool isLoading = state.whenOrNull(registering: () => true) ?? false;
        return Theme(
          data: AppTheme.getTheme(),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Edit profile",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffE09132),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(Icons.close))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: BasicProfileForm(
                          firstNameController: firstNameController,
                          secondNameController: secondNameController,
                          dobController: dobController,
                          genderController: genderController,
                          intialGenderSelection: genderSelection,
                          genders: ConstantResources.genders,
                          onGenderChanged: (gender) {
                            if (gender != null) {
                              setState(() {
                                genderSelection = gender;
                              });
                            }
                          },
                          onTapDOB: () {
                            _pickUpDOB();
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TMRoundedTextField(
                              controller: rankController,
                              fillColor: Colors.grey.shade200,
                              borderColor: Colors.grey.shade300,
                              hintText: "Rank",
                              readOnly: true,
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () async {
                                    await LauncherUtils.launchWebsite(
                                        url:
                                            "https://sites.google.com/view/travelmotto/ranks");
                                  },
                                  child: const Text(
                                    "Learn about ranks",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.black54,
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    await LauncherUtils.launchWebsite(
                                        url:
                                            "https://sites.google.com/view/travelmotto/promotion");
                                  },
                                  child: const Text(
                                    "Promote your rank",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.black54,
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontFamily: 'Poppins'),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                    width: double.infinity,
                    child: TMPrimaryButton(
                        //tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        text: "SAVE",
                        showLoading: isLoading,
                        onPressed: () {
                          if (isLoading) {
                            return;
                          }
                          if (firstNameController.text.trim().isEmpty ||
                              secondNameController.text.trim().isEmpty) {
                            showSnackBar(context,
                                "Please fill all your information properly");
                            return;
                          }
                          _bloc.add(ProfileEditEvent.edit(
                              firstName: firstNameController.text.trim(),
                              lastName: secondNameController.text.trim(),
                              dob: dob,
                              gender: genderSelection!.value));
                        })),
              ),
            ],
          ),
        );
      },
    );
  }
}
