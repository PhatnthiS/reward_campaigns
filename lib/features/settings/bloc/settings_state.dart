part of 'settings_bloc.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<Object> get props => [];
}

class SettingsInitial extends SettingsState {
  const SettingsInitial();

  @override
  List<Object> get props => [];
}

class SettingsLoading extends SettingsState {
  const SettingsLoading();

  @override
  List<Object> get props => [];
}

class UserNameLoaded extends SettingsState {
  final String userName;
  final bool isMember;

  const UserNameLoaded(this.userName, this.isMember);

  @override
  List<Object> get props => [userName, isMember];
}
