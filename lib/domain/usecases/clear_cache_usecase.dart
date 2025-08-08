import 'usecases.dart';

class ClearCacheUseCase {
  final OnboardingRepository repository;

  ClearCacheUseCase(this.repository);

  Future<void> call() {
    return repository.clearCache();
  }
}
