import 'package:flutter/material.dart';
import 'package:travel_motto/theme/theme.dart';

class DropDownItem {
  final String label;
  final String value;

  const DropDownItem({required this.label, required this.value});
}

class TMDropDownButton extends StatelessWidget {
  final List<DropDownItem> items;
  final DropDownItem? initialSelection;
  final TextEditingController? controller;
  final void Function(DropDownItem?)? onChanged;
  final String? label;
  final EdgeInsets? contentPadding;
  final bool isExpanded;
  final Color borderColor;
  final double borderRadius;
  final bool filled;
  final Color fillColor;
  final double borderWidth;
  final String hintText;
  final double hintSize;
  final Color hintColor;
  final Color iconColor;
  final double iconSize;
  final double textSize;
  final Color textColor;
  final int elevation;

  const TMDropDownButton(
      {super.key,
      required this.items,
      this.initialSelection,
      this.contentPadding = const EdgeInsets.all(8.0),
      this.controller,
      this.label,
      this.isExpanded = true,
      this.borderColor = Colors.black,
      this.borderRadius = 20.0,
      this.fillColor = Colors.grey,
      this.filled = true,
      this.borderWidth = 1,
      this.hintText = "",
      this.hintColor = Colors.grey,
      this.iconColor = Colors.grey,
      this.hintSize = 12,
      this.iconSize = 24,
      this.elevation = 16,
      this.textSize = 12,
      this.textColor = Colors.black,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.getTheme(),
      child: Container(
        decoration: BoxDecoration(
            color: fillColor,
            border: Border.all(color: borderColor, width: borderWidth),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: DropdownButton<DropDownItem>(
            value: initialSelection,
            isExpanded: isExpanded,
            underline: Container(), // Remove underline
            icon: Icon(Icons.arrow_drop_down, color: iconColor),
            iconSize: iconSize,
            elevation: elevation,
            hint: Text(
              hintText,
              style: TextStyle(
                  fontSize: hintSize, color: hintColor, fontFamily: 'Poppins'),
            ),
            style: const TextStyle(color: Colors.red),
            onChanged: onChanged,
            items:
                items.map<DropdownMenuItem<DropDownItem>>((DropDownItem value) {
              return DropdownMenuItem<DropDownItem>(
                value: value,
                child: Text(
                  value.label,
                  style: TextStyle(
                      color: textColor,
                      fontSize: textSize,
                      fontFamily: 'Poppins'),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
