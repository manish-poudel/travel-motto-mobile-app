import 'package:flutter/material.dart';
import 'package:travel_motto/widgets/confirm_sheet.dart';

showRoundedConfirmModalBottomSheet(
    {required BuildContext context,
    required Function() onPressed,
    String title = "",
    String description = "",
    String buttonText = "Confirm"}) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
    ),
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      return ConfirmSheet(
        title: title,
        description: description,
        onPressed: onPressed,
        buttonText: buttonText,
      );
    },
  );
}

showRoundedModalBottomSheet(
    {required BuildContext context,
    bool isDismissable = true,
    bool enableDrag = true,
    bool isScrollControlled = false,
    required Widget Function(BuildContext) builder}) {
  showModalBottomSheet(
      isDismissible: isDismissable,
      context: context,
      isScrollControlled: isScrollControlled,
      enableDrag: enableDrag,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
      ),
      backgroundColor: Colors.white,
      builder: builder);
}
