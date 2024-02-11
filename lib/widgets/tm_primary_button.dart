import 'package:flutter/material.dart';

class TMPrimaryButton extends StatelessWidget {
  final bool showLoading;
  final String text;
  final void Function() onPressed;
  final MaterialStateProperty<Size?>? manimumSize;
  final MaterialStateProperty<EdgeInsetsGeometry?>? padding;
  final MaterialTapTargetSize? tapTargetSize;
  final Color backgroundColor;
  final double borderRadius;
  final Color borderColor;
  final Color textColor;
  final FontWeight fontWeight;
  final double borderWidth;
  final String fontFamily;
  final double fontSize;

  const TMPrimaryButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.manimumSize,
      this.padding,
      this.tapTargetSize,
      this.backgroundColor = const Color(0xffE09132),
      this.borderRadius = 0.0,
      this.borderColor = const Color(0xffE09132),
      this.textColor = Colors.white,
      this.fontWeight = FontWeight.bold,
      this.borderWidth = 1,
      this.fontFamily = "Poppins",
      this.fontSize = 14,
      this.showLoading = false});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            tapTargetSize: tapTargetSize,
            minimumSize: manimumSize,
            padding: padding,
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                    side: BorderSide(color: borderColor, width: borderWidth)))),
        onPressed: onPressed,
        child: showLoading
            ? const SizedBox(
                height: 12,
                width: 12,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : Text(
                text,
                style: TextStyle(
                    fontSize: fontSize,
                    fontFamily: fontFamily,
                    fontWeight: fontWeight,
                    color: textColor),
              ));
  }
}
