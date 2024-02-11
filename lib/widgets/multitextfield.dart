import 'package:flutter/material.dart';
import 'package:travel_motto/widgets/tm_textfield.dart';

class MultiTextField extends StatelessWidget {
  final List<TextEditingController> controllers;
  final Function(int)? onSuffixIconPressed;
  final List<FocusNode> focusNodes;
  const MultiTextField(
      {super.key,
      required this.controllers,
      this.onSuffixIconPressed,
      required this.focusNodes});

  List<Widget> _generateTextField() {
    List<Widget> textFields = [];
    for (var (index, controller) in controllers.indexed) {
      textFields.add(TMTextField(
          focusNode: focusNodes[index],
          suffixIcon: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.black54,
              ),
              onPressed: () {
                if (onSuffixIconPressed != null) {
                  onSuffixIconPressed!(index);
                }
              }),
          controller: controller,
          color: Colors.black54));
    }
    return textFields;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: _generateTextField());
  }
}
