part of 'create_travel_bloc.dart';

@freezed
class CreateTravelState with _$CreateTravelState {
  const factory CreateTravelState.initial() = _Initial;
  const factory CreateTravelState.ready({
    @Default(false) bool isUpdating,
    required TextEditingController travelNameController,
    required TextEditingController travellingToController,
    required TextEditingController destinationController,
    required TextEditingController latController,
    required TextEditingController lngController,
    required List<TextEditingController> checkListControllers,
    required List<FocusNode> focusNodes,
    required DateTime travelDate,
    @Default(SaveState.idle()) SaveState saveState,
  }) = _Ready;
  const factory CreateTravelState.error({required String message}) = _Error;
}
