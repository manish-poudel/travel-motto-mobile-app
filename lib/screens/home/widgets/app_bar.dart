import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopAppBar extends StatelessWidget {
  final String travellerName;
  final String? travellerPhotoUrl;

  const TopAppBar({
    super.key,
    required this.travellerName,
    this.travellerPhotoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Hello, ",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              travellerName,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            ),
          ],
        ),
        GestureDetector(
          onTap: () async {
            //await FirebaseAuth.instance.signOut();
            // ignore: use_build_context_synchronously
            context.push('/settings');
          },
          child: travellerPhotoUrl == null
              ? CircleAvatar(
                  backgroundColor: Colors.grey[400],
                  child: Icon(
                    Icons.person,
                    color: Colors.grey[200],
                  ),
                )
              : CircleAvatar(
                  backgroundImage:
                      CachedNetworkImageProvider(travellerPhotoUrl!)),
        )
      ],
    );
  }
}
