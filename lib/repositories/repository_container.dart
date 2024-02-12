import 'package:travel_motto/repositories/current_travel_repository.dart';
import 'package:travel_motto/repositories/location_notes_repository.dart';
import 'package:travel_motto/repositories/location_repository.dart';
import 'package:travel_motto/repositories/os_map_repository.dart';
import 'package:travel_motto/repositories/pexel_repository.dart';
import 'package:travel_motto/repositories/travel_games_repository.dart';
import 'package:travel_motto/repositories/travel_photos_repository.dart';
import 'package:travel_motto/repositories/traveller_profile_repository.dart';
import 'package:travel_motto/repositories/travels_repository.dart';
import 'package:travel_motto/services/shared_preferences/shared_preferences_services.dart';

/// Container class for repository
class RepositoryContainer {
  SharedPreferencesServices? _sharedPreferencesServices;
  LocationRepository? _locationRepository;
  LocationNotesRepository? _locationNotesRepository;
  OSMapRepository? _osMapRepository;
  TravelPhotosRepository? _travelPhotosRepository;
  CurrentTravelRepository? _currentTravelRepository;
  TravelsRepository? _travelsRepository;
  TravellerProfileRepository? _travellerProfileRepository;
  TravelGamesRepository? _travelGamesRepository;

  TravellerProfileRepository get travellerProfileRepository {
    _travellerProfileRepository ??= TravellerProfileRepository();
    return _travellerProfileRepository!;
  }

  SharedPreferencesServices get sharedPreferencesServices {
    _sharedPreferencesServices ??= SharedPreferencesServices();
    return _sharedPreferencesServices!;
  }

  LocationRepository get locationRepository {
    _locationRepository ??= LocationRepository();
    return _locationRepository!;
  }

  LocationNotesRepository get locationNotesRepository {
    _locationNotesRepository ??= LocationNotesRepository();
    return _locationNotesRepository!;
  }

  OSMapRepository get osMapRepository {
    _osMapRepository ??= OSMapRepository();
    return _osMapRepository!;
  }

  TravelsRepository get travelsRepository {
    _travelsRepository ??=
        TravelsRepository(sharedPreferencesServices: sharedPreferencesServices);
    return _travelsRepository!;
  }

  TravelPhotosRepository get travelPhotosRepository {
    _travelPhotosRepository ??= TravelPhotosRepository(
        pexelsRepository: PexelsRepository(),
        sharedPreferencesServices: sharedPreferencesServices);
    return _travelPhotosRepository!;
  }

  CurrentTravelRepository get currentTravelRepository {
    _currentTravelRepository ??= CurrentTravelRepository(
        locationRepository: locationRepository,
        travelPhotosRepository: travelPhotosRepository,
        travelsRepository: travelsRepository);
    return _currentTravelRepository!;
  }

  TravelGamesRepository get travelGamesRepository {
    _travelGamesRepository ??= TravelGamesRepository();
    return _travelGamesRepository!;
  }

  void dispose() {
    _travelsRepository = null;
  }
}
