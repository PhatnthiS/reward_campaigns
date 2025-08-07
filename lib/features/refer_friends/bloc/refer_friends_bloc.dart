import 'package:reward_campaigns/features/features.dart';

part 'refer_friends_event.dart';

part 'refer_friends_state.dart';

class ReferFriendsBloc extends Bloc<ReferFriendsEvent, ReferFriendsState> {
  ReferFriendsBloc() : super(ReferFriendsInitial()) {
    on<LoadReferFriendsEvent>((event, emit) async {
      emit(ReferFriendsLoading());
      await Future.delayed(const Duration(milliseconds: 500));

      const referralCode = "ref=Jeno123";
      final referralLink = "https://reward-campaigns.com/signup?$referralCode";

      emit(ReferFriendsLoaded(referralLink));
    });
  }
}
