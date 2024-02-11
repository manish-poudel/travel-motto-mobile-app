import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_motto/screens/travel/current_travel/bloc/current_travel_bloc.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/utils/datetime_utils.dart';
import 'package:travel_motto/widgets/chip_button.dart';
import 'package:travel_motto/widgets/rounded_modal_bottom_sheet.dart';
import 'package:travel_motto/widgets/snackbar.dart';

class CurrentTravelScreen extends StatefulWidget {
  const CurrentTravelScreen({super.key});

  @override
  State<CurrentTravelScreen> createState() => _CurrentTravelScreenState();
}

class _CurrentTravelScreenState extends State<CurrentTravelScreen> {
  late final CurrentTravelBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = context.read<CurrentTravelBloc>();
    _bloc.add(const CurrentTravelEvent.started());
  }

  @override
  void dispose() {
    _bloc.add(const CurrentTravelEvent.syncTravel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.getTheme(),
      child: BlocConsumer<CurrentTravelBloc, CurrentTravelState>(
          builder: (context, state) {
        return state.whenOrNull(initial: () {
              return const Scaffold(
                  body: Center(child: CircularProgressIndicator()));
            }, ready: (currentTravel, deleteState, saveState) {
              bool isSaving = saveState.whenOrNull(saving: () => true) ?? false;
              return Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  leading: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                      ),
                      onPressed: () => Navigator.of(context).pop()),
                  backgroundColor: Colors.white,
                  actions: [
                    deleteState.whenOrNull(deleting: () {
                          return const Padding(
                            padding: EdgeInsets.only(right: 16.0),
                            child: SizedBox(
                                height: 24,
                                width: 24,
                                child: CircularProgressIndicator(
                                  strokeWidth: 1,
                                )),
                          );
                        }) ??
                        IconButton(
                            onPressed: () {
                              showRoundedConfirmModalBottomSheet(
                                  context: context,
                                  title: "Delete travel",
                                  description:
                                      "Are you sure you want to delete your travel?",
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    _bloc
                                        .add(const CurrentTravelEvent.delete());
                                  });
                            },
                            icon: const Icon(
                              Icons.delete,
                              size: 21,
                            ))
                  ],
                ),
                body: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            currentTravel.travel.name,
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 32.0, left: 16.0),
                          child: Text(
                            "Travelling from",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Card(
                            color: Colors.grey[50],
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                currentTravel.travel.startFullAddress,
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 21.0, left: 16.0),
                          child: Text(
                            "Travelling to",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Card(
                            color: Colors.grey[50],
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                currentTravel.travel.endFullAddress,
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 21.0, left: 16.0),
                          child: Text(
                            "Start date",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Card(
                            color: Colors.grey[50],
                            elevation: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                DateTimeUtils.formattedDate(
                                    currentTravel.travel.startDate),
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            ),
                          ),
                        ),
                        currentTravel.remainingTravelDistance == null
                            ? const SizedBox.shrink()
                            : const Padding(
                                padding: EdgeInsets.only(top: 21.0, left: 16.0),
                                child: Text(
                                  "Remaining distance",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black87),
                                ),
                              ),
                        currentTravel.remainingTravelDistance == null
                            ? const SizedBox.shrink()
                            : Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Card(
                                  color: Colors.grey[50],
                                  elevation: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "${currentTravel.remainingTravelDistance!.round()}m",
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.black54),
                                    ),
                                  ),
                                ),
                              ),
                        currentTravel.travel.checkList == null
                            ? const SizedBox.shrink()
                            : Padding(
                                padding: const EdgeInsets.only(
                                    top: 21.0, left: 16.0, right: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Checklist",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black87),
                                    ),
                                    Card(
                                      elevation: 0,
                                      color: Colors.grey[50],
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2.0, bottom: 2.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            for (int index = 0;
                                                index <
                                                    currentTravel.travel
                                                        .checkList!.length;
                                                index++)
                                              ListTile(
                                                visualDensity:
                                                    const VisualDensity(
                                                        vertical: -4,
                                                        horizontal: -4),
                                                contentPadding:
                                                    const EdgeInsets.all(0),
                                                leading: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 0.0),
                                                  child: Checkbox(
                                                      materialTapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      value: currentTravel
                                                              .travel
                                                              .checkList![index]
                                                              .status ==
                                                          "checked",
                                                      onChanged: (value) => _bloc
                                                          .add(CurrentTravelEvent
                                                              .toggleCheckList(
                                                                  index: index,
                                                                  checked:
                                                                      value!))),
                                                ),
                                                title: Text(
                                                  currentTravel.travel
                                                      .checkList![index].name,
                                                  style: const TextStyle(
                                                      fontSize: 12),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                        currentTravel.travel.status == "not_started"
                            ? Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: Center(
                                    child: isSaving
                                        ? const SizedBox(
                                            height: 18,
                                            width: 18,
                                            child: CircularProgressIndicator(
                                                color: Colors.green,
                                                strokeWidth: 2))
                                        : ChipButton(
                                            text: "Start travel",
                                            textColor: Colors.white,
                                            backGroundColor: Colors.green,
                                            borderColor: Colors.green,
                                            onPressed: () {
                                              showRoundedConfirmModalBottomSheet(
                                                  title: "Start travel",
                                                  description:
                                                      "Are you sure you want to start your travel now?",
                                                  context: context,
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                    _bloc.add(
                                                        const CurrentTravelEvent
                                                            .startTravel());
                                                  });
                                            },
                                          )),
                              )
                            : currentTravel.travel.status == "completed"
                                ? const SizedBox.shrink()
                                : Padding(
                                    padding: const EdgeInsets.all(32.0),
                                    child: Center(
                                        child: isSaving
                                            ? const SizedBox(
                                                height: 18,
                                                width: 18,
                                                child:
                                                    CircularProgressIndicator(
                                                        color: Colors.red,
                                                        strokeWidth: 2))
                                            : ChipButton(
                                                onPressed: () {
                                                  showRoundedConfirmModalBottomSheet(
                                                      title: "Complete travel",
                                                      description:
                                                          "Are you sure you want to complete your travel now?",
                                                      context: context,
                                                      onPressed: () {
                                                        _bloc.add(
                                                            const CurrentTravelEvent
                                                                .completeTravel());
                                                        Navigator.of(context)
                                                            .pop();
                                                      });
                                                },
                                                text: "Complete travel",
                                                textColor: Colors.white,
                                                backGroundColor: Colors.red,
                                                borderColor: Colors.red,
                                              )),
                                  )
                      ]),
                ),
              );
            }) ??
            const SizedBox.shrink();
      }, listener: (context, state) {
        state.whenOrNull(ready: (currentTravel, deleteState, saveState) {
          saveState.whenOrNull(failed: (message) {
            showSnackBar(context, message);
          });
          deleteState.whenOrNull(
            deleted: () {
              Navigator.of(context).pop();
            },
          );
        });
      }),
    );
  }
}
