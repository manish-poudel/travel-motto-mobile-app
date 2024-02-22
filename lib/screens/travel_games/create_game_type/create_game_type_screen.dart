import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_motto/screens/travel_games/create_game_type/bloc/create_game_type_bloc.dart';
import 'package:travel_motto/screens/travel_games/create_game_type/widgets/create_game_type_form.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/widgets/back_button.dart';
import 'package:travel_motto/widgets/photo_tips_viewer.dart';
import 'package:travel_motto/widgets/screen_title.dart';
import 'package:travel_motto/widgets/tm_primary_button.dart';

class CreateGameTypeScreen extends StatefulWidget {
  const CreateGameTypeScreen({super.key});

  @override
  State<CreateGameTypeScreen> createState() => _CreateGameTypeScreenState();
}

class _CreateGameTypeScreenState extends State<CreateGameTypeScreen> {
  late final CreateGameTypeBloc _bloc;
  bool showingTips = false;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<CreateGameTypeBloc>();
    _bloc.add(const CreateGameTypeEvent.started());
  }

  Future<bool> _onWillPop() async {
    if (showingTips) {
      _bloc.add(const CreateGameTypeEvent.closeTips());
      return true;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Theme(
          data: AppTheme.getTheme(),
          child: Scaffold(
              body: BlocConsumer<CreateGameTypeBloc, CreateGameTypeState>(
            builder: (context, state) {
              return state.when(initial: () {
                return const Center(child: CircularProgressIndicator());
              }, ready: (showTips, travelGameTips) {
                return Stack(children: [
                  SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0, left: 4),
                                  child: TMBackButton(),
                                ),
                                IconButton(
                                    onPressed: () {
                                      _bloc.add(
                                          const CreateGameTypeEvent.showTips());
                                    },
                                    icon: const Icon(
                                      Icons.tips_and_updates_outlined,
                                      color: Colors.orange,
                                    ))
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: ScreenTitle(
                              title: "Create Game",
                              subtitle:
                                  "Please share details about your game to give users a clear understanding of what it offers.",
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                                left: 16.0, right: 16.0, top: 8.0, bottom: 0),
                            child: CreateGameTypeForm(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Center(
                              child: TMPrimaryButton(
                                text: "Next",
                                onPressed: () {},
                                borderRadius: 12,
                              ),
                            ),
                          )
                        ]),
                  ),
                  showTips && travelGameTips != null
                      ? PhotoTipsViewer(
                          textHeading: "Some tips to help you get started",
                          photoTips: travelGameTips.tips,
                          onCloseButtonPressed: () {
                            _bloc.add(const CreateGameTypeEvent.closeTips());
                          },
                        )
                      : const SizedBox.shrink()
                ]);
              });
            },
            listener: (context, state) {
              state.whenOrNull(ready: (showTips, travelGameTips) {
                showingTips = showTips;
              });
            },
          ))),
    );
  }
}
