import 'package:reward_campaigns/features/features.dart';

part 'settings_event.dart';

part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final JoinMemberUseCase joinMemberUseCase;
  final GetUsernameUseCase getUsernameUseCase;
  final CheckIsMemberUseCase checkIsMemberUseCase;
  final ClearCacheUseCase clearCacheUseCase;
  final LanguageUseCase languageUseCase;

  SettingsBloc({
    required this.joinMemberUseCase,
    required this.getUsernameUseCase,
    required this.checkIsMemberUseCase,
    required this.languageUseCase,
    required this.clearCacheUseCase,
  }) : super(SettingsInitial()) {
    on<ChangeUsernameEvent>((event, emit) async {
      emit(SettingsLoading());
      await joinMemberUseCase(event.username);
    });

    on<SwitchLanguageEvent>((event, emit) async {
      await languageUseCase.setLanguage(event.lang);
    });

    on<ClearCacheEvent>((event, emit) async {
      await Future.delayed(Duration(seconds: 1)); // Simulate delay
      await clearCacheUseCase();
    });
  }
}
