import 'package:flutter/material.dart';
import 'package:travel_motto/widgets/tm_primary_button.dart';

class SomethingWentWrong extends StatelessWidget {
  final void Function()? onRetry;
  final String title;
  final Widget? icon;
  final Widget? hints;
  const SomethingWentWrong(
      {super.key,
      this.onRetry,
      this.icon,
      this.hints,
      this.title =
          "Oops, it looks like there's no road ahead. \nBefore proceeding, make sure you have"});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: icon ??
                Image.asset(
                  'assets/images/no_road.png',
                  height: 80,
                  width: 80,
                ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                    child: Text(
                      title,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  ),
                  hints != null
                      ? hints!
                      : const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "• A stable network connection",
                              style: TextStyle(color: Colors.black54),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "• Location services enabled from settings",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
          onRetry == null
              ? const SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Center(
                      child:
                          TMPrimaryButton(onPressed: onRetry!, text: "Retry")),
                )
        ]);
  }
}
