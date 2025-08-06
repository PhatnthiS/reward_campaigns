import 'package:reward_campaigns/core/constants/enums.dart';
import 'usecases.dart';

class LanguageUseCase {
  final OnboardingRepository repository;

  LanguageUseCase(this.repository);

  Future<String> getLanguage() {
    return repository.getLanguage();
  }

  Future<void> setLanguage(Language language) {
    return repository.setLanguage(language);
  }
}
