import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:reward_campaigns/domain/repositories/member_repository.dart';
import 'package:reward_campaigns/domain/usecases/check_is_member_usecase.dart';

class MockMemberRepository extends Mock implements MemberRepository {}

void main() {
  late CheckIsMemberUseCase useCase;
  late MockMemberRepository mockRepository;

  setUp(() {
    mockRepository = MockMemberRepository();
    useCase = CheckIsMemberUseCase(mockRepository);
  });

  test('should return true when user is a member', () async {
    when(() => mockRepository.isMember()).thenAnswer((_) async => true);

    final result = await useCase();

    expect(result, true);
    verify(() => mockRepository.isMember()).called(1);
  });

  test('should return false when user is not a member', () async {
    when(() => mockRepository.isMember()).thenAnswer((_) async => false);

    final result = await useCase();

    expect(result, false);
  });
}
