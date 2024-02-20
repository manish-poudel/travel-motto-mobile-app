import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:travel_motto/screens/travel_games/game_types/bloc/travel_game_types_bloc.dart';
import 'package:travel_motto/screens/travel_games/game_types/widgets/travel_game_type_list_item.dart';
import 'package:travel_motto/theme/theme.dart';

import 'package:travel_motto/widgets/something_went_wrong.dart';

class TravelGameTypeScreen extends StatefulWidget {
  const TravelGameTypeScreen({super.key});

  @override
  State<TravelGameTypeScreen> createState() => _TravelGameTypeScreenState();
}

class _TravelGameTypeScreenState extends State<TravelGameTypeScreen> {
  late final TravelGameTypesBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = context.read<TravelGameTypesBloc>();
    _bloc.add(const TravelGameTypesEvent.started());
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
            body: BlocConsumer<TravelGameTypesBloc, TravelGameTypesState>(
                builder: (context, state) {
                  return state.whenOrNull(initial: () {
                        return const Scaffold(
                            backgroundColor: Colors.white,
                            body: Center(child: CircularProgressIndicator()));
                      }, ready: (travelGameTypes) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Choose game",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: ListView.builder(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      itemCount: travelGameTypes.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 16.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              context.push('/travel_games',
                                                  extra:
                                                      travelGameTypes[index]);
                                            },
                                            child: TravelGameTypeListItem(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 240,
                                                travelGameType:
                                                    travelGameTypes[index]),
                                          ),
                                        );
                                      }),
                                ),
                              ),
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
