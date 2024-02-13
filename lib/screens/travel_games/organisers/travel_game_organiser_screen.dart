import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_motto/screens/travel_games/organisers/bloc/travel_game_organiser_bloc.dart';
import 'package:travel_motto/screens/travel_games/organisers/widgets/travel_game_organiser_list_item.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/utils/launcher_utils.dart';

import 'package:travel_motto/widgets/something_went_wrong.dart';

class TravelGameOrganiserScreen extends StatefulWidget {
  const TravelGameOrganiserScreen({super.key});

  @override
  State<TravelGameOrganiserScreen> createState() =>
      _TravelGameOrganiserScreenState();
}

class _TravelGameOrganiserScreenState extends State<TravelGameOrganiserScreen> {
  late final TravelGameOrganiserBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = context.read<TravelGameOrganiserBloc>();
    _bloc.add(const TravelGameOrganiserEvent.started());
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
            body: BlocConsumer<TravelGameOrganiserBloc,
                    TravelGameOrganiserState>(
                builder: (context, state) {
                  return state.whenOrNull(initial: () {
                        return const Scaffold(
                            backgroundColor: Colors.white,
                            body: Center(child: CircularProgressIndicator()));
                      }, ready: (travelGameOrganisers) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Choose organiser",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: ListView.builder(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: travelGameOrganisers.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            context.push('/travel_game_types',
                                                extra: travelGameOrganisers[
                                                    index]);
                                          },
                                          child: TravelGameOrganiserListItem(
                                              travelGameOrganiser:
                                                  travelGameOrganisers[index]),
                                        ),
                                      );
                                    }),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                    onPressed: () async {
                                      await LauncherUtils.launchWebsite(
                                          url:
                                              "https://sites.google.com/view/travelmotto/travel-games");
                                    },
                                    child: const Text(
                                      "Want to organise game? Learn how",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    )),
                              )
                            ],
                          ),
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
