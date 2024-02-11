import 'package:flutter/material.dart';

class ChipButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color backGroundColor;
  final Color borderColor;
  final Color textColor;
  final double elevation;
  final double borderRadius;

  const ChipButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.backGroundColor = Colors.white,
      this.borderColor = Colors.black,
      this.elevation = 16,
      this.borderRadius = 18,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(elevation),
            backgroundColor: MaterialStateProperty.all(backGroundColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    side: BorderSide(color: borderColor)))),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ));
  }
}
