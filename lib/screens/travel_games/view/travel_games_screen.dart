import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/screens/travel_games/view/bloc/travel_games_bloc.dart';
import 'package:travel_motto/screens/travel_games/view/widgets/travel_games_list_item.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/widgets/rounded_modal_bottom_sheet.dart';
import 'package:travel_motto/widgets/snackbar.dart';
import 'package:travel_motto/widgets/something_went_wrong.dart';
import 'package:travel_motto/widgets/tm_rounded_textfield.dart';

class TravelGamesScreen extends StatefulWidget {
  const TravelGamesScreen({super.key});

  @override
  State<TravelGamesScreen> createState() => _TravelGamesScreenState();
}

class _TravelGamesScreenState extends State<TravelGamesScreen> {
  late final TravelGamesBloc _bloc;
  final TextEditingController _passCodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc = context.read<TravelGamesBloc>();
    _bloc.add(const TravelGamesEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: AppTheme.getTheme(),
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                  ),
                  onPressed: () => Navigator.of(context).pop()),
              backgroundColor: Colors.white,
              title: const Text(
                "Travel Games",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
            ),
            body: BlocConsumer<TravelGamesBloc, TravelGamesState>(
                builder: (context, state) {
                  return state.whenOrNull(initial: () {
                        return const Scaffold(
                            backgroundColor: Colors.white,
                            body: Center(child: CircularProgressIndicator()));
                      }, ready: (travelGames) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ListView.builder(
                              itemCount: travelGames.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 32.0),
                                  child: TravelGamesListItem(
                                      onPressed: () {
                                        if (travelGames[index].passCode ==
                                            null) {
                                          context.push(
                                              '/play_travel_game_screen',
                                              extra: travelGames[index]);
                                        } else {
                                          showRoundedModalBottomSheet(
                                              context: context,
                                              isScrollControlled: true,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Enter passcode",
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                color: Theme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        travelGames[index]
                                                                    .passCodeHint ==
                                                                null
                                                            ? const SizedBox
                                                                .shrink()
                                                            : Text(
                                                                "Hint: ${travelGames[index].passCodeHint!}",
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    color: Colors
                                                                        .black54),
                                                              ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 16.0),
                                                          child: TMRoundedTextField(
                                                              hintText:
                                                                  "Passcode",
                                                              controller:
                                                                  _passCodeController),
                                                        ),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: TextButton(
                                                              child: Text("Go",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      color: Theme.of(
                                                                              context)
                                                                          .primaryColor)),
                                                              onPressed: () {
                                                                if (_passCodeController
                                                                        .text ==
                                                                    travelGames[
                                                                            index]
                                                                        .passCode) {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                  context.push(
                                                                      '/play_travel_game_screen',
                                                                      extra: travelGames[
                                                                          index]);
                                                                } else {
                                                                  Navigator.of(
                                                                          context)
                                                                      .pop();
                                                                  showSnackBar(
                                                                      context,
                                                                      "Ops! Wrong passcode. Try again");
                                                                }
                                                              },
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              });
                                        }
                                      },
                                      travelGame: travelGames[index]),
                                );
                              }),
                        );
                      }) ??
                      const SomethingWentWrong(
                        hints: SizedBox.shrink(),
                        icon: Icon(
                          Icons.error,
                          color: Colors.orange,
                          size: 24,
                        ),
                        title: "Something went wrong",
                      );
                },
                listener: (context, state) {})));
  }
}
