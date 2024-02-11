import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:travel_motto/screens/travel/history/bloc/travel_history_bloc.dart';
import 'package:travel_motto/screens/travel/history/widgets/travel_history_list_item.dart';
import 'package:travel_motto/theme/theme.dart';

class TravelHistoryScreen extends StatefulWidget {
  const TravelHistoryScreen({super.key});

  @override
  State<TravelHistoryScreen> createState() => _TravelHistoryScreenState();
}

class _TravelHistoryScreenState extends State<TravelHistoryScreen> {
  late final TravelHistoryBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = context.read<TravelHistoryBloc>();
    _bloc.add(const TravelHistoryEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.getTheme(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Travel history",
            style: TextStyle(fontSize: 16),
          ),
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
              onPressed: () => Navigator.of(context).pop()),
          backgroundColor: Colors.white,
        ),
        body: BlocConsumer<TravelHistoryBloc, TravelHistoryState>(
          builder: (context, state) {
            return state.when(initial: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, ready: (travels) {
              return travels.isEmpty
                  ? const Center(child: Text("No travel history"))
                  : ListView.separated(
                      separatorBuilder: (context, index) {
                        return Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        );
                      },
                      itemCount: travels.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 16.0, left: 16.0, right: 16.0),
                          child: TravelHistoryListItem(travel: travels[index]),
                        );
                      });
            }, failed: (message) {
              return Center(child: Text(message));
            });
          },
          listener: (context, state) {},
        ),
      ),
    );
  }
}
