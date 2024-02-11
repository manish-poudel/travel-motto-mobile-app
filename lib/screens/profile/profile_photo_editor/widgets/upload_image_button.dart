import 'package:flutter/material.dart';
import 'package:travel_motto/widgets/tm_primary_button.dart';

class UploadImageButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final bool loading;
  const UploadImageButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return TMPrimaryButton(
      showLoading: loading,
      text: text,
      onPressed: onPressed,
      backgroundColor: Colors.green,
      borderColor: Colors.green,
      borderWidth: 1,
      fontWeight: FontWeight.bold,
      fontSize: 12,
      textColor: Colors.white,
    );
  }
}
