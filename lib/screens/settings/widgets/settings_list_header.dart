import 'package:flutter/material.dart';

class SettingsListHeader extends StatelessWidget {
  final String title;
  const SettingsListHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 16),
    );
  }
}
