import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/widgets/back_button.dart';
import 'package:travel_motto/widgets/rules_viewer.dart';
import 'package:travel_motto/widgets/tm_primary_button.dart';

class CreateTravelGameRulesScreen extends StatefulWidget {
  const CreateTravelGameRulesScreen({super.key});

  @override
  State<CreateTravelGameRulesScreen> createState() =>
      _CreateTravelGameRulesScreenState();
}

class _CreateTravelGameRulesScreenState
    extends State<CreateTravelGameRulesScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.getTheme(),
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: const TMBackButton(),
            backgroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.all(21.0),
            child: SingleChildScrollView(
              child: Column(children: [
                const RulesViewer(
                    heading:
                        "Please Read Rules Carefully Before Organising a Game:",
                    rules: [
                      "Creating a game will grant you organizer status, which means you will be listed as a travel game organizer on the app.",
                      "Your game will be declared as global games meaning it will have global visibility and can be played by all users. However, it must be approved by us before they can be played by the public.",
                      "Please refrain from using offensive language in your games. Violation of this rule may result in permanent account suspension.",
                      "We do not assume responsibility for your travels, nor do we encourage travel solely for the purpose of creating games. Our platform provides you with the tools to organize and create games. For further details, refer to the terms and conditions available in the app settings",
                      "The approval process typically takes 2-3 days. If your game has not been approved after this timeframe, feel free to contact us for further assistance."
                    ]),
                Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: TMPrimaryButton(
                    text: "Let's go",
                    onPressed: () {
                      context.push('/create_game_type');
                    },
                    borderRadius: 12,
                  ),
                )
              ]),
            ),
          )),
    );
  }
}
