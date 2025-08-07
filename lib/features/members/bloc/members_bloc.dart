import 'package:reward_campaigns/features/features.dart';

part 'members_event.dart';

part 'members_state.dart';

class MembersBloc extends Bloc<MembersEvent, MembersState> {
  final GetUsernameUseCase getUsernameUseCase;
  final JoinMemberUseCase joinMemberUseCase;
  final CheckIsMemberUseCase checkIsMemberUseCase;

  MembersBloc({
    required this.getUsernameUseCase,
    required this.joinMemberUseCase,
    required this.checkIsMemberUseCase,
  }) : super(MembersInitial()) {
    on<LoadMemberEvent>((event, emit) async {
      emit(MembersLoading());
      final isMember = await checkIsMemberUseCase();
      final userName = await getUsernameUseCase();

      if (isMember) {
        emit(MembersLoaded(userName, isMember));
      } else {
        emit(MembersLoaded(null, isMember));
      }
    });
  }
}
