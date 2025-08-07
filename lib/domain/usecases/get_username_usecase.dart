import 'package:reward_campaigns/data/repositories/repositories.dart';

class GetUsernameUseCase {
  final MemberRepository repository;

  GetUsernameUseCase(this.repository);

  Future<String> call() {
    return repository.getUsername();
  }
}
