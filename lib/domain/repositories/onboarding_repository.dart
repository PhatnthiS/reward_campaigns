import '../../core/constants/enums.dart';

abstract class OnboardingRepository {
  Future<bool> isFirstLaunch();

  Future<void> completeOnboarding();

  Future<String> getLanguage();

  Future<void> setLanguage(Language language);
}
