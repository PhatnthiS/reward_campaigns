part of 'members_bloc.dart';

abstract class MembersState {}

class MembersInitial extends MembersState {}

class MembersLoading extends MembersState {}

class MembersLoaded extends MembersState {
  final String userName;

  MembersLoaded(this.userName);
}
