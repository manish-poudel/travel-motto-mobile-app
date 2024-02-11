import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsProfileCard extends StatelessWidget {
  final String fullName;
  final String rank;
  final String? photoUrl;
  final Function()? onEditProfilePressed;
  const SettingsProfileCard(
      {super.key,
      required this.fullName,
      required this.rank,
      this.photoUrl,
      this.onEditProfilePressed});

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          photoUrl == null
              ? GestureDetector(
                  onTap: () {
                    context.push('/profile_photo_editor');
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey[400],
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.grey[200],
                    ),
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    context.push('/profile_photo_editor');
                  },
                  child: CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(photoUrl!),
                    radius: 40,
                  ),
                ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      fullName,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ],
                ),
                Text(
                  "Rank: $rank",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.7), fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color:
                                      const Color(0xffE09132).withOpacity(1)))),
                    ),
                    onPressed: onEditProfilePressed,
                    child: Text(
                      "Edit profile",
                      style: TextStyle(
                          color: const Color(0xffE09132).withOpacity(1)),
                    ),
                  ),
                )
              ],
            ),
          )
        ]);
  }
}
