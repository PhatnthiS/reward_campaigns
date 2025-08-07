part of 'members_bloc.dart';

abstract class MembersEvent {}

class LoadMemberEvent extends MembersEvent {}

class JoinMemberEvent extends MembersEvent {
  final String username;

  JoinMemberEvent(this.username);
}
