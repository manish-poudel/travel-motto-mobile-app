import 'package:flutter/material.dart';

class LoadingMessage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  const LoadingMessage(
      {super.key,
      this.imagePath = 'assets/images/location_search.gif',
      this.title = '',
      this.subtitle = ''});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Center(
            child: Image.asset(
              imagePath,
              height: 80,
              width: 80,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              title.isEmpty
                  ? const SizedBox.shrink()
                  : Text(title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400)),
              subtitle.isEmpty
                  ? const SizedBox.shrink()
                  : Text(subtitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.5),
                      )),
            ],
          ),
        )
      ],
    );
  }
}
