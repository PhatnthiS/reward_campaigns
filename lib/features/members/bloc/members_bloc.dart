import 'package:reward_campaigns/features/features.dart';

part 'members_event.dart';

part 'members_state.dart';

class MembersBloc extends Bloc<MembersEvent, MembersState> {
  MembersBloc() : super(MembersInitial()) {
    on<LoadMemberEvent>((event, emit) async {
      emit(MembersLoading());
      await Future.delayed(const Duration(milliseconds: 500));

      const username = "John Doe";
      emit(MembersLoaded(username));
    });
  }
}
