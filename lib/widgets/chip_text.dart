import 'package:flutter/material.dart';

class ChipText extends StatelessWidget {
  final String text;
  final Color backGroundColor;
  final Color borderColor;
  final Color textColor;
  final double elevation;
  final double borderRadius;
  final double fontSize;

  const ChipText(
      {super.key,
      required this.text,
      this.backGroundColor = Colors.white,
      this.borderColor = Colors.black,
      this.elevation = 16,
      this.borderRadius = 18,
      this.fontSize = 12,
      this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
            ),
            color: backGroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: fontSize),
          ),
        ));
  }
}
