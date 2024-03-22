part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.generateFromImage({
    required String prompt,
    required List<XFile> files,
  }) = _GenerateFromImage;
  const factory HomeEvent.startChat(
      {required String id, required String prompt,}) = _StartChat;

  const factory HomeEvent.generateFromText({required String prompt}) =
      _GenerateFromText;
  const factory HomeEvent.selectChat({
    required String id,
    required String title,
  }) = _SelectChat;
  const factory HomeEvent.switchModel({required GeminiModelEnum modelEnum}) =
      _SwitchModel;
  const factory HomeEvent.speak({required String text}) = _Speak;
  const factory HomeEvent.pause({required String text}) = _Pause;
}
