import 'package:flutter/material.dart';
import 'package:travel_motto/widgets/tm_primary_button.dart';

class ImagePickerButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const ImagePickerButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TMPrimaryButton(
      text: text,
      onPressed: onPressed,
      backgroundColor: Colors.white,
      borderColor: Colors.black,
      borderWidth: 1,
      fontWeight: FontWeight.bold,
      fontSize: 12,
      textColor: Colors.black,
    );
  }
}
