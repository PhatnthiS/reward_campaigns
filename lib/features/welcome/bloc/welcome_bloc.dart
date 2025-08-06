import 'package:reward_campaigns/features/features.dart';

part 'welcome_event.dart';

part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  final CompleteOnboardingUseCase completeWelcomeUseCase;

  WelcomeBloc({required this.completeWelcomeUseCase})
    : super(WelcomeInitial()) {
    on<CompleteOnboardingEvent>((event, emit) async {
      await completeWelcomeUseCase();
    });
  }
}
