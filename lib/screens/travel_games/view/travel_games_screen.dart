import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_motto/screens/travel_games/view/bloc/travel_games_bloc.dart';
import 'package:travel_motto/screens/travel_games/view/widgets/travel_games_list_item.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/utils/launcher_utils.dart';
import 'package:travel_motto/widgets/something_went_wrong.dart';

class TravelGamesScreen extends StatefulWidget {
  const TravelGamesScreen({super.key});

  @override
  State<TravelGamesScreen> createState() => _TravelGamesScreenState();
}

class _TravelGamesScreenState extends State<TravelGamesScreen> {
  late final TravelGamesBloc _bloc;
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
              actions: [
                TextButton.icon(
                    onPressed: () async {
                      await LauncherUtils.launchWebsite(
                          url:
                              "https://sites.google.com/view/travelmotto/travel-games");
                    },
                    icon: const Icon(Icons.add),
                    label: const Text("Create"))
              ],
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
                                return TravelGamesListItem(
                                    travelGame: travelGames[index]);
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
