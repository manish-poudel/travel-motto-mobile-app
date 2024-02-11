import 'dart:io';

import 'package:flutter/material.dart';

class ProfileFileImage extends StatelessWidget {
  final File file;
  const ProfileFileImage({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 80,
        backgroundColor: Colors.grey[400],
        backgroundImage: FileImage(file));
  }
}
