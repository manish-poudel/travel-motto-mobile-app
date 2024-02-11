import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:travel_motto/screens/travel/create_travel/bloc/create_travel_bloc.dart';
import 'package:travel_motto/theme/theme.dart';
import 'package:travel_motto/utils/datetime_utils.dart';
import 'package:travel_motto/widgets/multitextfield.dart';
import 'package:travel_motto/widgets/snackbar.dart';
import 'package:travel_motto/widgets/something_went_wrong.dart';

import 'package:travel_motto/widgets/tm_textfield.dart';

class CreateTravelScreen extends StatefulWidget {
  const CreateTravelScreen({super.key});

  @override
  State<CreateTravelScreen> createState() => _CreateTravelScreenState();
}

class _CreateTravelScreenState extends State<CreateTravelScreen> {
  late final CreateTravelBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = context.read<CreateTravelBloc>();
    _bloc.add(const CreateTravelEvent.started());
  }

  // Picks up travel date
  _pickUpTravelDate(DateTime initialDate) async {
    DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      builder: (context, child) {
        return Theme(data: AppTheme.getTheme(), child: child!);
      },
      context: context,
      initialDate: initialDate,
      firstDate: now,
      lastDate: DateTime(2050),
    );
    if (picked != null) {
      _bloc.add(CreateTravelEvent.updateTravelDate(date: picked));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: AppTheme.getTheme(),
        child: BlocConsumer<CreateTravelBloc, CreateTravelState>(
            listener: (context, state) {
          state.whenOrNull(ready: (_, __, ___, ____, _____, ______, _______,
              ________, _________, __________, saveState) {
            saveState.whenOrNull(
                failed: (message) => showSnackBar(context, message),
                saved: () {
                  while (GoRouter.of(context).canPop()) {
                    GoRouter.of(context).pop();
                  }
                });
          });
        }, builder: (context, state) {
          return state.whenOrNull(initial: () {
                return const Scaffold(
                    body: Center(
                        child: SizedBox(child: CircularProgressIndicator())));
              }, ready: (travelNameController,
                  travellingToController,
                  destinationController,
                  latController,
                  lngController,
                  checkListControllers,
                  focusNodes,
                  currentLocation,
                  travelDate,
                  destination,
                  saveState) {
                return Scaffold(
                    bottomNavigationBar: saveState.whenOrNull(
                            saving: () => Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                          height: 12,
                                          width: 12,
                                          child: CircularProgressIndicator()),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          "Saving..",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                )) ??
                        TextButton(
                            onPressed: () {
                              _bloc.add(const CreateTravelEvent.save());
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )),
                    backgroundColor: Colors.white,
                    appBar: AppBar(
                      leading: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: 16,
                          ),
                          onPressed: () => Navigator.of(context).pop()),
                      backgroundColor: Colors.white,
                    ),
                    body: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16.0, top: 16.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Travel Information",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text(
                                        "Please fill the details with accurate information",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 36.0),
                                    child: Text(
                                      "Travel name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black87),
                                    ),
                                  ),
                                  TMTextField(
                                    fontSize: 12,
                                    color: Colors.black45,
                                    controller: travelNameController,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 32.0),
                                    child: Text(
                                      "Travelling from",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black87),
                                    ),
                                  ),
                                  TMTextField(
                                    fontSize: 12,
                                    color: Colors.black45,
                                    controller: travellingToController,
                                    readOnly: true,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 32.0),
                                    child: Text(
                                      "Travelling to",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black87),
                                    ),
                                  ),
                                  TMTextField(
                                    controller: destinationController,
                                    fontSize: 12,
                                    color: Colors.black45,
                                    readOnly: true,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 32.0),
                                    child: Text(
                                      "Start date",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black87),
                                    ),
                                  ),
                                  TMTextField(
                                    controller: TextEditingController(
                                        text: DateTimeUtils.formattedDate(
                                            travelDate)),
                                    fontSize: 12,
                                    color: Colors.black45,
                                    readOnly: true,
                                    onTap: () => _pickUpTravelDate(travelDate),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 32.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Checklist",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.black87),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              _bloc.add(const CreateTravelEvent
                                                  .addCheckList());
                                            },
                                            icon: const Icon(
                                              Icons.add_circle_outline_sharp,
                                              color: Colors.black,
                                            ))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 140.0),
                                    child: MultiTextField(
                                        focusNodes: focusNodes,
                                        controllers: checkListControllers,
                                        onSuffixIconPressed: (index) {
                                          _bloc.add(
                                              CreateTravelEvent.removeCheckList(
                                                  index: index));
                                        }),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ));
              }) ??
              Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                  ),
                  body: Center(child: SomethingWentWrong(onRetry: () {
                    _bloc.add(const CreateTravelEvent.started());
                  })));
        }));
  }
}
