import 'package:flutter/material.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/utils/location_utils.dart';
import 'package:travel_motto/widgets/tm_primary_button.dart';

class RequestForTrash extends StatelessWidget {
  final void Function() onPressed;
  final double? missedDistance;
  final bool showLoading;
  const RequestForTrash(
      {super.key,
      required this.onPressed,
      required this.missedDistance,
      this.showLoading = false});

  @override
  Widget build(BuildContext context) {
    String distance = missedDistance == null
        ? ''
        : LocationUtils.readableDistance(missedDistance!.toInt());
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
                "Request for trash",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),
              Text(
                "You are about $distance away from the note's actual location. Deleting it is not possible from this distance, but you can request its disposal by nearby travellers. Would you like to make a trash request?",
                style: const TextStyle(fontSize: 14, fontFamily: 'Poppins'),
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
