import 'package:reward_campaigns/data/repositories/repositories.dart';

class JoinMemberUseCase {
  final MemberRepository repository;

  JoinMemberUseCase(this.repository);

  Future<void> call(String name) {
    return repository.joinMember(name);
  }
}
