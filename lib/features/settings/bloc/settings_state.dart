part of 'settings_bloc.dart';

abstract class SettingsState {}

class SettingsInitial extends SettingsState {}

class SettingsLoading extends SettingsState {}

class SetLanguage extends SettingsState {}

class UserNameLoaded extends SettingsState {
  final String userName;
  final bool isMember;

  UserNameLoaded(this.userName, this.isMember);
}

