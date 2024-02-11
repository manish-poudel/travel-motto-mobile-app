import 'package:flutter/material.dart';

class CurrentPageViewIdentifier extends StatelessWidget {
  final int size;
  final int currentPos;
  const CurrentPageViewIdentifier(
      {super.key, required this.size, required this.currentPos});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (int i = 1; i <= size; i++) {
      widgets.add(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: i == currentPos
            ? const Icon(
                Icons.circle,
                color: Colors.white,
                size: 10,
              )
            : const Icon(
                Icons.circle_outlined,
                color: Colors.white,
                size: 10,
              ),
      ));
    }
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: widgets);
  }
}
