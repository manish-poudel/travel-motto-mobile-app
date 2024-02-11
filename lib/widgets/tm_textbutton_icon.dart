import 'package:flutter/material.dart';

class TMTextButtonWithIcon extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Color iconColor;
  final IconData iconData;
  final String text;
  final double borderRadius;
  final Function()? onPressed;
  const TMTextButtonWithIcon(
      {super.key,
      this.color = Colors.green,
      this.textColor = Colors.white,
      this.iconColor = Colors.white,
      this.text = "",
      this.borderRadius = 16,
      this.onPressed,
      this.iconData = Icons.play_arrow});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius))),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 8)),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        onPressed: onPressed,
        icon: Icon(
          iconData,
          color: iconColor,
        ),
        label: Text(
          text,
          style: TextStyle(color: textColor),
        ));
  }
}
