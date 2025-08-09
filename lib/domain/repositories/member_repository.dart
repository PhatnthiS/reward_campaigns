abstract class MemberRepository {
  Future<bool> isMember();

  Future<void> joinMember(String name);

  Future<String> getUsername();
}
