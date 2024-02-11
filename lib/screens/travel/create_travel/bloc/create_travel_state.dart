part of 'create_travel_bloc.dart';

@freezed
class CreateTravelState with _$CreateTravelState {
  const factory CreateTravelState.initial() = _Initial;
  const factory CreateTravelState.ready({
    required TextEditingController travelNameController,
    required TextEditingController travellingToController,
    required TextEditingController destinationController,
    required TextEditingController latController,
    required TextEditingController lngController,
    required List<TextEditingController> checkListControllers,
    required List<FocusNode> focusNodes,
    required TravelLocation currentLocation,
    required DateTime travelDate,
    required OSLocation destination,
    @Default(SaveState.idle()) SaveState saveState,
  }) = _Ready;
  const factory CreateTravelState.error({required String message}) = _Error;
}
