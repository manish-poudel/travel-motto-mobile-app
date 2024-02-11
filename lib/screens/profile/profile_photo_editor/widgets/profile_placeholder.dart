import 'package:flutter/material.dart';

class ProfilePlaceholder extends StatelessWidget {
  const ProfilePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 80,
      backgroundColor: Colors.grey[400],
      child: Icon(
        Icons.person,
        size: 80,
        color: Colors.grey[200],
      ),
    );
  }
}
