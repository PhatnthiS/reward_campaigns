part of 'settings_bloc.dart';

abstract class SettingsEvent {}

class SwitchLanguageEvent extends SettingsEvent {
  final Language lang;

  SwitchLanguageEvent(this.lang);
}

class ChangeUsernameEvent extends SettingsEvent {
  final String username;

  ChangeUsernameEvent(this.username);
}

class ClearCacheEvent extends SettingsEvent {}

class GetUsernameEvent extends SettingsEvent {}
