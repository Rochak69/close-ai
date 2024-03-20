part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.generateFromImage(
      {required String prompt, required List<XFile> files}) = _Home;
  const factory HomeEvent.startChat({required int id, required String prompt}) =
      _StartChat;
}
