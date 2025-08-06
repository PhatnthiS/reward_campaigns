import 'usecases.dart';

class CompleteOnboardingUseCase {
  final OnboardingRepository repository;

  CompleteOnboardingUseCase(this.repository);

  Future<void> call() {
    return repository.completeOnboarding();
  }
}
