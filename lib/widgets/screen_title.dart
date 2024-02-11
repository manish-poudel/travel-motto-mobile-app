import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const ScreenTitle({super.key, this.title = "", this.subtitle = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 21,
              color: Color(0xffE09132),
              fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
