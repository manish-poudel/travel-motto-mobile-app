import 'package:flutter/material.dart';

class TMRoundedTextField extends StatelessWidget {
  final TextEditingController? controller;
  final EdgeInsets? contentPadding;
  final TextStyle? style;
  final Color? cursorColor;
  final Color borderColor;
  final double borderRadius;
  final String hintText;
  final double hintSize;
  final Color hintColor;
  final Color fillColor;
  final double borderWidth;
  final bool readOnly;
  final Widget? suffixIcon;
  final Function()? onTap;

  const TMRoundedTextField(
      {super.key,
      this.controller,
      this.style = const TextStyle(fontSize: 12),
      this.contentPadding = const EdgeInsets.all(8.0),
      this.borderColor = Colors.black,
      this.cursorColor = Colors.black,
      this.borderRadius = 20.0,
      this.hintColor = Colors.grey,
      this.fillColor = Colors.white,
      this.hintText = "",
      this.readOnly = false,
      this.borderWidth = 1,
      this.onTap,
      this.suffixIcon,
      this.hintSize = 12.0});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly,
      controller: controller,
      style: style,
      cursorColor: cursorColor,
      decoration: InputDecoration(
          contentPadding: contentPadding,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor, width: borderWidth),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          filled: true,
          hintStyle: TextStyle(
              color: hintColor,
              fontSize: hintSize,
              fontWeight: FontWeight.w400),
          hintText: hintText,
          fillColor: fillColor,
          suffixIcon: suffixIcon),
    );
  }
}
