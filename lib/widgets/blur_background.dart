import 'dart:ui';

import 'package:flutter/material.dart';

class BlurBackground extends StatelessWidget {
  final ImageProvider image;
  final double sigmaX;
  final double sigmaY;
  final Color color;
  final Widget? widget;
  const BlurBackground(
      {super.key,
      this.image = const AssetImage("assets/images/bouddha.jpg"),
      this.sigmaX = 10.0,
      this.sigmaY = 10.0,
      this.color = Colors.grey,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(color: color),
                child: widget ?? const SizedBox.shrink())));
  }
}
