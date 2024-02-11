import 'package:flutter/material.dart';

class SettingsListItem extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final VisualDensity? visualDensity;
  final bool showLeading;
  final String? badgeText;
  final Color badgeColor;
  final Color textColor;

  const SettingsListItem(
      {super.key,
      required this.title,
      this.onTap,
      this.visualDensity,
      this.badgeText,
      this.badgeColor = Colors.white,
      this.textColor = Colors.black87,
      this.showLeading = true});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: visualDensity,
      trailing: !showLeading
          ? null
          : Icon(Icons.arrow_forward_ios, size: 12, color: textColor),
      onTap: onTap,
      leading: badgeText != null
          ? RichText(
              text: TextSpan(
                text: title,
                style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
                children: <WidgetSpan>[
                  WidgetSpan(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: badgeColor,
                            ),
                            color: badgeColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(badgeText!),
                        )),
                  ))
                ],
              ),
            )
          : Text(
              title,
              style: TextStyle(fontSize: 14, color: textColor),
            ),
    );
  }
}
