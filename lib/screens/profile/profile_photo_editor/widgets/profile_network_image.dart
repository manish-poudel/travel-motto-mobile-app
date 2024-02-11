import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileNetworkImage extends StatelessWidget {
  final String url;
  const ProfileNetworkImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 80,
        backgroundColor: Colors.grey[400],
        backgroundImage: CachedNetworkImageProvider(url));
  }
}
