import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel_motto/models/open_street_location/os_location.dart';
import 'package:travel_motto/models/server/save_state.dart';
import 'package:travel_motto/models/travel/travel.dart';
import 'package:travel_motto/models/travel_location/travel_location.dart';
import 'package:travel_motto/repositories/current_travel_repository.dart';
import 'package:travel_motto/repositories/location_repository.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/repositories/travels_repository.dart';

part 'create_travel_event.dart';
part 'create_travel_state.dart';
part 'create_travel_bloc.freezed.dart';

class CreateTravelBloc extends Bloc<CreateTravelEvent, CreateTravelState> {
  final LocationRepository locationRepository;
  final TravelsRepository travelsRepository;
  final CurrentTravelRepository currentTravelRepository;
  final TravellerProfileRepository travellerProfileRepository;

  late final TextEditingController travelNameController;
  late final TextEditingController travellingFromController;
  late final TextEditingController destinationController;
  late final TextEditingController latController;
  late final TextEditingController lngController;
  late final List<TextEditingController> checkListControllers;
  late final List<FocusNode> focusNodes;

  late Map<String, dynamic> formControllers;
  final OSLocation? destination;
  final Travel? travel;

  CreateTravelBloc(
      {this.destination,
      required this.locationRepository,
      required this.travelsRepository,
      required this.currentTravelRepository,
      required this.travellerProfileRepository,
      this.travel})
      : super(const _Initial()) {
    on<CreateTravelEvent>((event, emit) async {
      await event.when(
          started: () async => await _onEventStarted(emit),
          addCheckList: () => _onAddCheckList(emit),
          removeCheckList: (int index) => _onRemoveCheckList(index, emit),
          save: () async => await _onSave(emit),
          updateTravelDate: (DateTime date) => _onUpdateTravelDate(date, emit));
    });
  }

  _onEventStarted(Emitter<CreateTravelState> emit) async {
    try {
      if (travel == null) {
        await _onFirstTimeTravelCreate(emit);
      } else {
        _onUpdateCurrentTravel(emit);
      }
    } catch (err) {
      emit(const CreateTravelState.error(
          message: "Something went wrong.Try again"));
    }
  }

  _onFirstTimeTravelCreate(Emitter<CreateTravelState> emit) async {
    TravelLocation? currentLocation =
        await locationRepository.getCurrentLocation();
    if (currentLocation == null) {
      return emit((state as _Ready).copyWith(
          saveState:
              const SaveState.failed(message: "Please enabled your location")));
    }
    travelNameController =
        TextEditingController(text: _genInitialTravelName(currentLocation));
    travellingFromController =
        TextEditingController(text: currentLocation.getReadableLocation());
    destinationController =
        TextEditingController(text: destination?.displayName);
    latController = TextEditingController(text: destination?.lat ?? '');
    lngController = TextEditingController(text: destination?.lon ?? '');
    checkListControllers = [TextEditingController()];
    focusNodes = [FocusNode()];
    emit(CreateTravelState.ready(
      travelNameController: travelNameController,
      travellingToController: travellingFromController,
      destinationController: destinationController,
      latController: latController,
      lngController: lngController,
      checkListControllers: checkListControllers,
      focusNodes: focusNodes,
      travelDate: DateTime.now(),
    ));
  }

  _onUpdateCurrentTravel(Emitter<CreateTravelState> emit) {
    travelNameController = TextEditingController(text: travel?.name);
    travellingFromController =
        TextEditingController(text: travel?.startFullAddress);
    destinationController = TextEditingController(text: travel?.endFullAddress);
    latController = TextEditingController(
        text: travel?.endPos == null ? '' : travel?.endPos?.first.toString());
    lngController = TextEditingController(
        text: travel?.endPos == null ? '' : travel?.endPos?.last.toString());
    if (travel?.checkList == null) {
      checkListControllers = [TextEditingController()];
      focusNodes = [FocusNode()];
    } else {
      checkListControllers = [];
      focusNodes = [];
      travel?.checkList?.forEach((element) {
        checkListControllers.add(TextEditingController(text: element.name));
        focusNodes.add(FocusNode());
      });
    }

    emit(CreateTravelState.ready(
        isUpdating: true,
        travelNameController: travelNameController,
        travellingToController: travellingFromController,
        destinationController: destinationController,
        latController: latController,
        lngController: lngController,
        checkListControllers: checkListControllers,
        focusNodes: focusNodes,
        travelDate: travel!.startDate));
  }

  String _genInitialTravelName(TravelLocation travelLocation) {
    try {
      String travelLocationDisplayName = travelLocation.getReadableLocation();
      if (destination!.displayName != null &&
          travelLocationDisplayName.isNotEmpty &&
          destination!.displayName!.isNotEmpty) {
        return "${travelLocationDisplayName.split(",")[0]} to ${destination!.displayName!.split(",")[0]}";
      }
      return '';
    } catch (err) {
      return '';
    }
  }

  _onAddCheckList(Emitter<CreateTravelState> emit) {
    try {
      List<TextEditingController> currentControllers = [];
      List<FocusNode> focusNodes = [];
      currentControllers.addAll(((state as _Ready).checkListControllers));
      currentControllers.add(TextEditingController());
      focusNodes.addAll((state as _Ready).focusNodes);
      focusNodes.add(FocusNode());
      emit((state as _Ready).copyWith(
          checkListControllers: currentControllers, focusNodes: focusNodes));
      if (focusNodes.isNotEmpty) {
        focusNodes.last.requestFocus();
      }
    } catch (err) {
      emit(const CreateTravelState.error(
          message: "Something went wrong.Try again"));
    }
  }

  _onRemoveCheckList(int index, Emitter<CreateTravelState> emit) {
    try {
      List<TextEditingController> oldControllers =
          (state as _Ready).checkListControllers;
      List<FocusNode> oldFocusNodes = (state as _Ready).focusNodes;
      if (oldControllers[index].text.isEmpty) {
        List<TextEditingController> currentControllers = [];
        List<FocusNode> currentFocusNodes = [];

        currentControllers.addAll(oldControllers);
        currentFocusNodes.addAll(oldFocusNodes);

        currentControllers.removeAt(index);
        currentFocusNodes.removeAt(index);

        emit((state as _Ready).copyWith(
            checkListControllers: currentControllers,
            focusNodes: currentFocusNodes));
        if (currentFocusNodes.isNotEmpty) {
          currentFocusNodes.last.requestFocus();
        }
      } else {
        oldControllers[index].clear();
      }
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
    }
  }

  _onSave(Emitter<CreateTravelState> emit) async {
    try {
      if (travel == null) {
        await _saveTravelData(emit);
      } else {
        await _updateCurrentTravel(emit);
      }
    } catch (err) {
      emit((state as _Ready)
          .copyWith(saveState: SaveState.failed(message: err.toString())));
    }
  }

  _saveTravelData(Emitter<CreateTravelState> emit) async {
    emit((state as _Ready).copyWith(saveState: const SaveState.saving()));

    if (travelNameController.text.isEmpty) {
      return emit((state as _Ready).copyWith(
          saveState:
              const SaveState.failed(message: "Please provide travel name")));
    }
    TravelLocation? currentLocation =
        await locationRepository.getCurrentLocation();
    if (currentLocation == null) {
      return emit((state as _Ready).copyWith(
          saveState:
              const SaveState.failed(message: "Please enabled your location")));
    }
    var id = travelsRepository.generateFirestoreDocId();
    List<double> startPos = [
      currentLocation.position.latitude,
      currentLocation.position.longitude
    ];
    List<double>? endPos =
        latController.text.isEmpty || lngController.text.isEmpty
            ? null
            : [
                double.parse(latController.text.trim()),
                double.parse(lngController.text.trim())
              ];

    List<CheckList> checkLists = [];

    for (var element in (state as _Ready).checkListControllers) {
      if (element.text.trim().isNotEmpty) {
        if (checkLists
            .where((checkList) => checkList.name == element.text.trim())
            .isEmpty) {
          checkLists.add(CheckList(name: element.text, status: "unchecked"));
        }
      }
    }

    await travelsRepository
        .saveCurrentTravel(
            travel: Travel(
                id: id,
                status: "not_started",
                name: travelNameController.text.trim(),
                startPos: startPos,
                endPos: endPos,
                startFullAddress: travellingFromController.text.trim(),
                endFullAddress: destinationController.text.trim(),
                startDate: (state as _Ready).travelDate,
                checkList: checkLists.isEmpty ? null : checkLists))
        .then((value) {
      travellerProfileRepository.updateCurrentTravelId(id: id);
      currentTravelRepository.streamCurrentTravel();
      emit((state as _Ready).copyWith(saveState: const SaveState.saved()));
    }).catchError((err) {
      emit((state as _Ready)
          .copyWith(saveState: SaveState.failed(message: err.toString())));
    });
  }

  _updateCurrentTravel(Emitter<CreateTravelState> emit) async {
    emit((state as _Ready).copyWith(saveState: const SaveState.saving()));

    if (travelNameController.text.isEmpty) {
      return emit((state as _Ready).copyWith(
          saveState:
              const SaveState.failed(message: "Please provide travel name")));
    }

    List<CheckList> checkLists = [];

    for (var element in (state as _Ready).checkListControllers) {
      if (element.text.trim().isNotEmpty) {
        if (checkLists
            .where((checkList) => checkList.name == element.text.trim())
            .isEmpty) {
          CheckList? checkList;
          List<CheckList>? matchingCheckLists = travel?.checkList
              ?.where((checkList) => checkList.name == element.text.trim())
              .toList();
          if (matchingCheckLists != null && matchingCheckLists.isNotEmpty) {
            checkList = matchingCheckLists.first;
          }

          checkLists.add(CheckList(
              name: element.text,
              status: checkList == null ? "unchecked" : checkList.status));
        }
      }
    }

    Travel updatedTravel = travel!.copyWith(
        name: travelNameController.text.trim(),
        startDate: (state as _Ready).travelDate,
        checkList: checkLists.isEmpty ? null : checkLists);

    if (updatedTravel == travel) {
      return emit(
          (state as _Ready).copyWith(saveState: const SaveState.saved()));
    }
    await travelsRepository
        .updateCurrentTravel(travel: updatedTravel)
        .then((value) {
      currentTravelRepository.updateTravel(updatedTravel);
      emit((state as _Ready).copyWith(saveState: const SaveState.saved()));
    }).catchError((err) {
      emit((state as _Ready)
          .copyWith(saveState: SaveState.failed(message: err.toString())));
    });
  }

  _onUpdateTravelDate(DateTime date, Emitter<CreateTravelState> emit) {
    emit((state as _Ready).copyWith(travelDate: date));
  }
}
