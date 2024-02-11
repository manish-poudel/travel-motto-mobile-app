import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final Function()? onSuffixIconPressed;
  const PasswordInput(
      {super.key,
      required this.controller,
      this.obscureText = true,
      this.onSuffixIconPressed});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      enableSuggestions: false,
      autocorrect: false,
      style: const TextStyle(
        color: Colors.white,
        decoration: TextDecoration.none,
        decorationThickness: 0,
      ),
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: onSuffixIconPressed,
            icon: obscureText
                ? const Icon(
                    Icons.visibility_off,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.visibility,
                    color: Colors.white,
                  )),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
      ),
    );
  }
}
