// ReferFriends_state.dart
part of 'refer_friends_bloc.dart';

abstract class ReferFriendsState {}

class ReferFriendsInitial extends ReferFriendsState {}

class ReferFriendsLoading extends ReferFriendsState {}

class ReferFriendsLoaded extends ReferFriendsState {
  final String referFriendsLink;

  ReferFriendsLoaded(this.referFriendsLink);
}
