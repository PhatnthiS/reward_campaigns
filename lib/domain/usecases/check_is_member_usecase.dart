import 'usecases.dart';

class CheckIsMemberUseCase {
  final MemberRepository repository;

  CheckIsMemberUseCase(this.repository);

  Future<bool> call() {
    return repository.isMember();
  }
}
