import 'package:flutter/material.dart';
import 'package:travel_motto/widgets/tm_drop_down_button.dart';
import 'package:travel_motto/widgets/tm_rounded_textfield.dart';

class BasicProfileForm extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController secondNameController;
  final TextEditingController dobController;
  final TextEditingController genderController;
  final List<DropDownItem> genders;

  final Function()? onTapDOB;
  final void Function(DropDownItem?)? onGenderChanged;
  final DropDownItem? intialGenderSelection;

  const BasicProfileForm(
      {super.key,
      required this.firstNameController,
      required this.secondNameController,
      required this.dobController,
      required this.genderController,
      required this.genders,
      this.onTapDOB,
      this.intialGenderSelection,
      this.onGenderChanged});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TMRoundedTextField(
        controller: firstNameController,
        fillColor: Colors.grey.shade200,
        borderColor: Colors.grey.shade300,
        hintText: "First name",
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: TMRoundedTextField(
          controller: secondNameController,
          fillColor: Colors.grey.shade200,
          borderColor: Colors.grey.shade300,
          hintText: "Last name",
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: TMRoundedTextField(
          onTap: onTapDOB,
          controller: dobController,
          fillColor: Colors.grey.shade200,
          borderColor: Colors.grey.shade300,
          hintText: "DOB",
          readOnly: true,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: TMDropDownButton(
          initialSelection: intialGenderSelection,
          onChanged: onGenderChanged,
          items: genders,
          hintText: "Choose gender",
          fillColor: Colors.grey.shade200,
          borderColor: Colors.grey.shade300,
          borderRadius: 30,
        ),
      )
    ]);
  }
}
