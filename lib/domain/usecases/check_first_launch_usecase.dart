import 'usecases.dart';

class CheckFirstLaunchUseCase {
  final OnboardingRepository repository;

  CheckFirstLaunchUseCase(this.repository);

  Future<bool> call() {
    return repository.isFirstLaunch();
  }
}
