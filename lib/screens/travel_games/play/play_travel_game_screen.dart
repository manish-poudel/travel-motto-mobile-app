import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_motto/screens/travel_games/play/bloc/play_travel_game_bloc.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/utils/launcher_utils.dart';
import 'package:travel_motto/widgets/rounded_modal_bottom_sheet.dart';

import 'package:travel_motto/widgets/something_went_wrong.dart';
import 'package:travel_motto/widgets/tm_rounded_textfield.dart';

class PlayTravelGameScreen extends StatefulWidget {
  const PlayTravelGameScreen({super.key});

  @override
  State<PlayTravelGameScreen> createState() => _PlayTravelGameScreenState();
}

class _PlayTravelGameScreenState extends State<PlayTravelGameScreen> {
  late final PlayTravelGameBloc _bloc;
  final TextEditingController _answerController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _bloc = context.read<PlayTravelGameBloc>();
    _bloc.add(const PlayTravelGameEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.getTheme(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Play",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
              onPressed: () => Navigator.of(context).pop()),
        ),
        body: BlocConsumer<PlayTravelGameBloc, PlayTravelGameState>(
          builder: (context, state) {
            return state.whenOrNull(
                  initial: () {
                    return const Center(child: CircularProgressIndicator());
                  },
                  ready: (allowPlay, distanceFromLocation, travelGame) {
                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          travelGame.photoUrl != null
                              ? Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    FadeInImage.assetNetwork(
                                      placeholder: 'assets/images/loading.gif',
                                      placeholderFit: BoxFit.scaleDown,
                                      image: travelGame.photoUrl!,
                                      height: 200,
                                      width: double.infinity,
                                      fit: BoxFit.fitWidth,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          travelGame.photoOwner == null
                                              ? const SizedBox.shrink()
                                              : GestureDetector(
                                                  onTap: () async {
                                                    if (travelGame
                                                            .photoOwnerLink !=
                                                        null) {
                                                      await LauncherUtils
                                                          .launchWebsite(
                                                              url: travelGame
                                                                  .photoOwnerLink!);
                                                    }
                                                  },
                                                  child: Text(
                                                    "Image by ${travelGame.photoOwner!}",
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                          travelGame.photoSource != null
                                              ? Text(
                                                  " from ${travelGame.photoSource!}",
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),
                                                )
                                              : const SizedBox.shrink()
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox.shrink(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                  ),
                                  child: Text(
                                    "${travelGame.question}?",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                ),
                                Text(
                                  travelGame.notes,
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.black54),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 32.0),
                                  child: TMRoundedTextField(
                                      controller: _answerController,
                                      readOnly: !allowPlay,
                                      hintText: allowPlay
                                          ? "Type your answer"
                                          : "Vist the place to unlock it",
                                      suffixIcon: allowPlay == true
                                          ? null
                                          : const Icon(Icons.lock)),
                                ),
                                allowPlay == false
                                    ? Padding(
                                        padding:
                                            const EdgeInsets.only(top: 16.0),
                                        child: Text(
                                          "To play this game, you must be within a ${travelGame.allowRadius.ceil()}m radius of ${travelGame.fullAddress}, yet you are currently situated ${distanceFromLocation}m away from this location.",
                                          style: const TextStyle(
                                              color: Colors.red, fontSize: 12),
                                        ),
                                      )
                                    : Padding(
                                        padding:
                                            const EdgeInsets.only(top: 0.0),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: TextButton(
                                              child: const Text(
                                                "Check",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              onPressed: () {
                                                if (travelGame.answer ==
                                                    _answerController.text
                                                        .trim()) {
                                                  showRoundedConfirmModalBottomSheet(
                                                      title:
                                                          "You got it right!",
                                                      description: travelGame
                                                          .lockedNotes,
                                                      context: context,
                                                      buttonText: "Close",
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      });
                                                } else {
                                                  showRoundedConfirmModalBottomSheet(
                                                      title: "Wrong answer",
                                                      description:
                                                          "Let's try once again!",
                                                      context: context,
                                                      buttonText: "Ok",
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      });
                                                }
                                              }),
                                        ),
                                      ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 24.0),
                                    child: Text(
                                      "Game conducted by ${travelGame.author}",
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.black54),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ) ??
                SomethingWentWrong(
                  onRetry: () {
                    _bloc.add(const PlayTravelGameEvent.started());
                  },
                );
          },
          listener: (context, state) {},
        ),
      ),
    );
  }
}
