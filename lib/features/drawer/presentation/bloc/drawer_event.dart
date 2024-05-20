part of 'drawer_bloc.dart';

@freezed
class DrawerEvent with _$DrawerEvent {
  const factory DrawerEvent.getChatHistory() = _GetChatHistory;
  const factory DrawerEvent.clearAll() = _ClearAll;
}
