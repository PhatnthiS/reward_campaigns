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
      await _loadMembershipStatus(emit);
    });
    on<JoinMemberEvent>((event, emit) async {
      emit(MembersLoading());
      await joinMemberUseCase(event.username);
      await _loadMembershipStatus(emit);
    });
  }

  Future<void> _loadMembershipStatus(Emitter<MembersState> emit) async {
    final isMember = await checkIsMemberUseCase();
    final userName = isMember ? await getUsernameUseCase() : '';
    emit(MembersLoaded(userName, isMember));
  }
}
