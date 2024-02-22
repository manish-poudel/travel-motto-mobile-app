import 'package:flutter/material.dart';

class TMBackButton extends StatelessWidget {
  const TMBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          size: 16,
          color: Colors.black,
        ),
        onPressed: () => Navigator.of(context).pop());
  }
}
