import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_motto/screens/travel_games/play/bloc/play_travel_game_bloc.dart';
import 'package:travel_motto/theme/theme.dart';

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
      child: BlocConsumer<PlayTravelGameBloc, PlayTravelGameState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color(0xFFEFEFEF),
            // appBar: AppBar(
            //   actions: state.whenOrNull(
            //     ready: (allowPlay, distanceFromLocation, travelGame) {
            //       return travelGame.totalPlayers != null
            //           ? [
            //               const Icon(Icons.people),
            //               Padding(
            //                 padding:
            //                     const EdgeInsets.only(right: 16.0, left: 8),
            //                 child: Text(travelGame.totalPlayers.toString()),
            //               )
            //             ]
            //           : null;
            //     },
            //   ),
            //   title: const Text(
            //     "Play",
            //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            //   ),
            //   backgroundColor: Colors.white,
            //   leading: IconButton(
            //       icon: const Icon(
            //         Icons.arrow_back_ios,
            //         size: 16,
            //       ),
            //       onPressed: () => Navigator.of(context).pop()),
            // ),
            body: state.whenOrNull(
                  initial: () {
                    return const Center(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircularProgressIndicator(),
                        Text("locating where you are...")
                      ],
                    ));
                  },
                  ready: (allowPlay, distanceFromLocation, travelGame) {
                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          travelGame.photoUrl != null
                              ? Stack(
                                  children: [
                                    FadeInImage.assetNetwork(
                                      placeholder: 'assets/images/loading.gif',
                                      placeholderFit: BoxFit.scaleDown,
                                      image: travelGame.photoUrl!,
                                      height:
                                          MediaQuery.of(context).size.height,
                                      width: double.infinity,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 32.0, left: 16),
                                                child: IconButton(
                                                    icon: const Icon(
                                                      Icons.arrow_back_ios,
                                                      color: Colors.white,
                                                      size: 21,
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .pop())),
                                            ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(16.0),
                                                      topRight: Radius.circular(
                                                          16.0)),
                                              child: BackdropFilter(
                                                filter: ImageFilter.blur(
                                                    sigmaX: 10.0, sigmaY: 10.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.black
                                                          .withOpacity(0.7),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  0)),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.0),
                                                            offset:
                                                                const Offset(
                                                                    0, -1),
                                                            blurRadius: 1.0)
                                                      ]),
                                                  child: Column(
                                                    children: [
                                                      Theme(
                                                        data: Theme.of(context)
                                                            .copyWith(
                                                                dividerColor: Colors
                                                                    .transparent),
                                                        child: ExpansionTile(
                                                          title: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 0.0,
                                                                    right: 0.0),
                                                            child: Text(
                                                              travelGame
                                                                  .question,
                                                              style: const TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      left:
                                                                          16.0,
                                                                      right:
                                                                          16.0,
                                                                      bottom:
                                                                          16.0),
                                                              child: Text(
                                                                travelGame
                                                                    .notes,
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .grey),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 8.0,
                                                                right: 8.0,
                                                                top: 16.0),
                                                        child: TMRoundedTextField(
                                                            borderColor: Theme
                                                                    .of(context)
                                                                .primaryColor,
                                                            borderWidth: 2,
                                                            fillColor:
                                                                Colors.white,
                                                            controller:
                                                                _answerController,
                                                            readOnly:
                                                                !allowPlay,
                                                            hintText: allowPlay
                                                                ? "Type your answer"
                                                                : "Vist the place to unlock it",
                                                            suffixIcon: allowPlay ==
                                                                    true
                                                                ? null
                                                                : const Icon(
                                                                    Icons
                                                                        .lock)),
                                                      ),
                                                      allowPlay == false
                                                          ? Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 0.0,
                                                                      left:
                                                                          16.0,
                                                                      bottom:
                                                                          16.0,
                                                                      right:
                                                                          16.0),
                                                              child: Text(
                                                                "To play this game, you must be within a ${travelGame.allowRadius.ceil()}m radius of ${travelGame.fullAddress}, yet you are currently situated ${distanceFromLocation}m away from this location.",
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .red,
                                                                    fontSize:
                                                                        10),
                                                              ),
                                                            )
                                                          : Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      bottom:
                                                                          16.0,
                                                                      top: 8.0,
                                                                      right:
                                                                          8.0),
                                                              child: Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child:
                                                                    TextButton(
                                                                        child:
                                                                            const Text(
                                                                          "Check",
                                                                          style:
                                                                              TextStyle(fontWeight: FontWeight.bold),
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          if (travelGame.answer.toLowerCase() ==
                                                                              _answerController.text.toLowerCase().trim()) {
                                                                            _showRightAnswerDialog(travelGame.lockedNotes);
                                                                            _bloc.add(const PlayTravelGameEvent.logPlay(correctAnswer: true));
                                                                          } else {
                                                                            _showWrongAnswerDialog();
                                                                            _bloc.add(const PlayTravelGameEvent.logPlay(correctAnswer: false));
                                                                          }
                                                                        }),
                                                              ),
                                                            ),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Text(
                                                            "Game conducted by ${travelGame.author}",
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                    )
                                  ],
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    );
                  },
                ) ??
                SomethingWentWrong(
                  onRetry: () {
                    _bloc.add(const PlayTravelGameEvent.started());
                  },
                ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }

  Future<void> _showRightAnswerDialog(String unlockedNote) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Theme(
            data: AppTheme.getTheme(),
            child: AlertDialog(
              backgroundColor: Colors.white,
              title: const Column(
                children: [
                  Text(
                    'Congrats, you got it right',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                      unlockedNote,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text(
                    'OK',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _showWrongAnswerDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Theme(
              data: AppTheme.getTheme(),
              child: AlertDialog(
                title: const Text(
                  'Sorry, you got it wrong',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                content: const SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text(
                        'Lets try again once again. Make sure you have read the note which might contain hints.',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text(
                      'OK',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ));
      },
    );
  }
}
