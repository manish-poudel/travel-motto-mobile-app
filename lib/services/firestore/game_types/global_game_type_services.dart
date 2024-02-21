import 'package:travel_motto/models/travel_game_type/travel_game_type.dart';
import 'package:travel_motto/repositories/travel_games_repository.dart';
import 'package:travel_motto/services/firestore/game_types/firestore_game_type_services.dart';

class FirestoreGlobalGameTypeServices extends FirestoreGameTypeServices {
  final TravelGamesRepository travelGamesRepository;
  FirestoreGlobalGameTypeServices({required this.travelGamesRepository});

  @override
  createTravelGameType(TravelGameType travelGameType) {}
}
