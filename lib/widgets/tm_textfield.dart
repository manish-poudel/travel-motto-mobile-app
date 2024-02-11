import 'package:flutter/material.dart';

class TMTextField extends StatelessWidget {
  final TextEditingController controller;
  final Color color;
  final String? hintText;
  final Function(String)? onChanged;
  final Function()? onTap;
  final bool readOnly;
  final double fontSize;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  const TMTextField(
      {super.key,
      required this.controller,
      this.color = Colors.black,
      this.onChanged,
      this.onTap,
      this.readOnly = false,
      this.fontSize = 14,
      this.suffixIcon,
      this.focusNode,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      onTap: onTap,
      readOnly: readOnly,
      cursorColor: color,
      onChanged: onChanged,
      style: TextStyle(
          color: color,
          decoration: TextDecoration.none,
          decorationThickness: 0,
          fontSize: fontSize),
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 12),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: color, width: 1),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: color, width: 1),
        ),
      ),
    );
  }
}
