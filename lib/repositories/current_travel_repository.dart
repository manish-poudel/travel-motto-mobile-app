import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:travel_motto/models/current_travel.dart/current_travel.dart';
import 'package:travel_motto/models/current_travel_stream_data/current_travel_stream_data.dart';
import 'package:travel_motto/models/photos/travel_photos/travel_photos.dart';
import 'package:travel_motto/models/travel/travel.dart';
import 'package:travel_motto/models/travel_location/travel_location.dart';
import 'package:travel_motto/repositories/location_repository.dart';
import 'package:travel_motto/repositories/travel_photos_repository.dart';
import 'package:travel_motto/repositories/travels_repository.dart';

enum StreamProcess { unknown, loading, done }

class CurrentTravelRepository {
  final LocationRepository locationRepository;
  final TravelPhotosRepository travelPhotosRepository;
  final TravelsRepository travelsRepository;

  final StreamController<CurrentTravelStreamData> _currentTravelController =
      StreamController<CurrentTravelStreamData>.broadcast();
  Stream<CurrentTravelStreamData> get currentTravelStream =>
      _currentTravelController.stream;

  static CurrentTravelStreamData currentTravelStreamData =
      CurrentTravelStreamData(
          process: StreamProcess.unknown, currentTravel: null);

  late TravelPhotos travelPhotos;

  CurrentTravelRepository(
      {required this.locationRepository,
      required this.travelPhotosRepository,
      required this.travelsRepository});

  /// Stream current travel
  streamCurrentTravel() async {
    currentTravelStreamData = CurrentTravelStreamData(
        process: StreamProcess.loading, currentTravel: null);
    _currentTravelController.sink.add(currentTravelStreamData);
    Travel? travel = await travelsRepository.getCurrentTravel();
    if (travel == null) {
      currentTravelStreamData = CurrentTravelStreamData(
          process: StreamProcess.done, currentTravel: null);
      _currentTravelController.sink.add(currentTravelStreamData);
      return;
    }

    travelPhotos = TravelPhotos(destination: "", pexelsPhotos: []);

    //TODOLocation permission
    double? remainingTravelDistance;
    TravelLocation? location = await locationRepository.getCurrentLocation();
    if (location != null) {
      remainingTravelDistance = travel.endPos != null
          ? Geolocator.distanceBetween(
              location.position.latitude,
              location.position.longitude,
              travel.endPos!.first,
              travel.endPos!.last)
          : null;
    }

    currentTravelStreamData = CurrentTravelStreamData(
        process: StreamProcess.done,
        currentTravel: CurrentTravel(
            photos: travelPhotos,
            travel: travel,
            remainingTravelDistance: remainingTravelDistance,
            completedCheckList: travel.checkList
                ?.where((element) => element.status == "checked")
                .length));
    _currentTravelController.sink.add(currentTravelStreamData);
  }

  updateCurrentTravel(CurrentTravel currentTravel) {
    currentTravelStreamData = CurrentTravelStreamData(
        process: StreamProcess.done, currentTravel: currentTravel);
    _currentTravelController.sink.add(currentTravelStreamData);
  }

  updateTravel(Travel travel) {
    currentTravelStreamData = CurrentTravelStreamData(
        process: StreamProcess.done,
        currentTravel: currentTravelStreamData.currentTravel?.copyWith(
            travel: travel,
            completedCheckList: travel.checkList
                ?.where((element) => element.status == "checked")
                .length));
    _currentTravelController.sink.add(currentTravelStreamData);
  }

  addTravelPhoto() async {
    try {
      if (travelPhotos.pexelsPhotos.isEmpty) {
        travelPhotos = await travelPhotosRepository.getPublicTravelPhotos(
            destination:
                currentTravelStreamData.currentTravel!.travel.endFullAddress);
      }

      CurrentTravel? currentTravel =
          currentTravelStreamData.currentTravel?.copyWith(photos: travelPhotos);
      currentTravelStreamData = CurrentTravelStreamData(
          process: StreamProcess.done, currentTravel: currentTravel);
      _currentTravelController.sink.add(currentTravelStreamData);
    } catch (err) {}
  }

  removeTravelPhoto() {
    travelPhotos = TravelPhotos(destination: "", pexelsPhotos: []);
    CurrentTravel? currentTravel =
        currentTravelStreamData.currentTravel?.copyWith(photos: travelPhotos);
    currentTravelStreamData = CurrentTravelStreamData(
        process: StreamProcess.done, currentTravel: currentTravel);
    _currentTravelController.sink.add(currentTravelStreamData);
  }

  // Remove current travel
  removeCurrentTravel() {
    currentTravelStreamData = CurrentTravelStreamData(
        process: StreamProcess.done, currentTravel: null);
    _currentTravelController.sink.add(currentTravelStreamData);
  }

  Future<Travel> getMockCurrentTravel() async {
    await Future.delayed(const Duration(seconds: 2));
    return Travel(
        id: "id-1",
        status: "active",
        name: "Kathmandu to Carlifonia",
        startPos: [27.7250256, 85.34074],
        endPos: [36.7783, 119.4179],
        startFullAddress: "Dhumbarahi, Kathmandu, Nepal",
        endFullAddress: "Carlifonia, USA",
        startDate: DateTime.now(),
        checkList: [
          CheckList(name: "Buy toothbrush", status: "checked"),
          CheckList(name: "Print ticket", status: "unchecked")
        ]);
  }
}
