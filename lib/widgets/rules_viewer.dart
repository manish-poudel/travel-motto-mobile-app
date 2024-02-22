import 'package:flutter/material.dart';

class RulesViewer extends StatelessWidget {
  final String heading;
  final List<String> rules;
  const RulesViewer({super.key, required this.heading, required this.rules});

  @override
  Widget build(BuildContext context) {
    List<Widget> ruleTexts = [];
    for (var rule in rules) {
      ruleTexts.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text("\u2022  $rule",
              style: const TextStyle(color: Colors.black87, fontSize: 12)),
        ),
      );
    }
    return Column(
      children: [
        Text(
          heading,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(children: ruleTexts),
        )
      ],
    );
  }
}
