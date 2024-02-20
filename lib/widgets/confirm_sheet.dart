import 'package:flutter/material.dart';
import 'package:travel_motto/widgets/tm_primary_button.dart';

class ConfirmSheet extends StatelessWidget {
  final String title;
  final String description;
  final void Function() onPressed;
  final String buttonText;
  const ConfirmSheet(
      {super.key,
      this.title = "",
      this.description = "",
      this.buttonText = "Confirm",
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
            Text(
              description,
              style: const TextStyle(fontSize: 14, fontFamily: 'Poppins'),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: TMPrimaryButton(
                  text: buttonText,
                  onPressed: onPressed,
                  borderRadius: 12,
                ),
              ),
            )
          ]),
    );
  }
}
