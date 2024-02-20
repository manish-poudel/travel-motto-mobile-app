import 'package:flutter/material.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/widgets/tm_primary_button.dart';

class CancelTrashRequest extends StatelessWidget {
  final void Function() onPressed;
  final bool showLoading;
  const CancelTrashRequest(
      {super.key, required this.onPressed, this.showLoading = false});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.getTheme(),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Cancel Request for Trash",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),
              const Text(
                "Are you sure you want to cancel your request to move this note to trash?",
                style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: TMPrimaryButton(
                      borderRadius: 12,
                      text: "Confirm",
                      onPressed: onPressed,
                      showLoading: showLoading),
                ),
              )
            ]),
      ),
    );
  }
}
