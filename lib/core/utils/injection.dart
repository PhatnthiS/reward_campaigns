import 'package:get_it/get_it.dart';
import 'package:reward_campaigns/data/repositories/repositories.dart';
import 'package:reward_campaigns/features/features.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  // Register SharedPreferences instance
  getIt.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );

  // Register SharedPrefsService
  getIt.registerSingleton<SharedPrefsService>(
    SharedPrefsService(getIt<SharedPreferences>()),
  );

  // Repositories
  getIt.registerLazySingleton<OnboardingRepository>(
    () => OnboardingRepositoryImpl(getIt<SharedPrefsService>()),
  );
  getIt.registerLazySingleton<CampaignRepository>(
    () => CampaignRepositoryImpl(),
  );

  // Use Cases
  getIt.registerLazySingleton(() => CheckFirstLaunchUseCase(getIt()));
  getIt.registerLazySingleton(() => CompleteOnboardingUseCase(getIt()));
  getIt.registerLazySingleton(() => LanguageUseCase(getIt()));
  getIt.registerLazySingleton(() => GetCampaignsUseCase(getIt()));

  // Blocs
  getIt.registerFactory(
    () =>
        SplashBloc(languageUseCase: getIt(), checkFirstLaunchUseCase: getIt()),
  );
  getIt.registerFactory(
    () =>
        WelcomeBloc(languageUseCase: getIt(), completeWelcomeUseCase: getIt()),
  );

  getIt.registerFactory(() => CampaignsBloc(getCampaignsUseCase: getIt()));
}
