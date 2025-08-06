import 'package:reward_campaigns/features/features.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final LanguageUseCase languageUseCase;
  final CheckFirstLaunchUseCase checkFirstLaunchUseCase;

  SplashBloc({
    required this.languageUseCase,
    required this.checkFirstLaunchUseCase,
  }) : super(SplashInitial()) {
    on<CheckFirstLaunchEvent>((event, emit) async {
      final isFirstLaunch = await checkFirstLaunchUseCase();
      if (isFirstLaunch) {
        emit(ShowWelcomeScreen());
      } else {
        emit(SkipWelcomeScreen());
      }
    });

    on<GetLanguageEvent>((event, emit) async {
     String language =  await languageUseCase.getLanguage();
      emit(GetLanguage(language));
    });
  }
}
