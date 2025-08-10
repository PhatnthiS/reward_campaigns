import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:reward_campaigns/data/repositories/repositories.dart';
import 'package:reward_campaigns/features/settings/bloc/settings_bloc.dart';

class MockJoinMemberUseCase extends Mock implements JoinMemberUseCase {}

class MockGetUsernameUseCase extends Mock implements GetUsernameUseCase {}

class MockCheckIsMemberUseCase extends Mock implements CheckIsMemberUseCase {}

class MockClearCacheUseCase extends Mock implements ClearCacheUseCase {}

class MockLanguageUseCase extends Mock implements LanguageUseCase {}

void main() {
  late SettingsBloc settingsBloc;
  late MockJoinMemberUseCase mockJoinMemberUseCase;
  late MockGetUsernameUseCase mockGetUsernameUseCase;
  late MockCheckIsMemberUseCase mockCheckIsMemberUseCase;
  late MockClearCacheUseCase mockClearCacheUseCase;
  late MockLanguageUseCase mockLanguageUseCase;

  setUp(() {
    mockJoinMemberUseCase = MockJoinMemberUseCase();
    mockGetUsernameUseCase = MockGetUsernameUseCase();
    mockCheckIsMemberUseCase = MockCheckIsMemberUseCase();
    mockClearCacheUseCase = MockClearCacheUseCase();
    mockLanguageUseCase = MockLanguageUseCase();
    registerFallbackValue(Language.EN);

    settingsBloc = SettingsBloc(
      joinMemberUseCase: mockJoinMemberUseCase,
      getUsernameUseCase: mockGetUsernameUseCase,
      checkIsMemberUseCase: mockCheckIsMemberUseCase,
      clearCacheUseCase: mockClearCacheUseCase,
      languageUseCase: mockLanguageUseCase,
    );
  });

  group('SettingsBloc', () {
    test('initial state is SettingsInitial', () {
      expect(settingsBloc.state, SettingsInitial());
    });

    blocTest<SettingsBloc, SettingsState>(
      'emits [SettingsLoading, UserNameLoaded] when GetUsernameEvent is added and user is a member',
      build: () {
        when(() => mockCheckIsMemberUseCase()).thenAnswer((_) async => true);
        when(() => mockGetUsernameUseCase()).thenAnswer((_) async => 'JohnDoe');
        return settingsBloc;
      },
      act: (bloc) => bloc.add(GetUsernameEvent()),
      wait: const Duration(seconds: 3),
      expect: () => [SettingsLoading(), UserNameLoaded('JohnDoe', true)],
    );

    blocTest<SettingsBloc, SettingsState>(
      'emits [SettingsLoading, UserNameLoaded] with empty username when user is not a member',
      build: () {
        when(() => mockCheckIsMemberUseCase()).thenAnswer((_) async => false);
        when(() => mockGetUsernameUseCase()).thenAnswer((_) async => '');
        return settingsBloc;
      },
      act: (bloc) => bloc.add(GetUsernameEvent()),
      wait: const Duration(seconds: 3),
      expect: () => [SettingsLoading(), UserNameLoaded('', false)],
    );

    blocTest<SettingsBloc, SettingsState>(
      'emits [SettingsLoading, UserNameLoaded] after ChangeUsernameEvent',
      build: () {
        when(() => mockJoinMemberUseCase(any())).thenAnswer((_) async => {});
        when(() => mockCheckIsMemberUseCase()).thenAnswer((_) async => true);
        when(() => mockGetUsernameUseCase()).thenAnswer((_) async => 'NewName');
        return settingsBloc;
      },
      act: (bloc) => bloc.add(ChangeUsernameEvent('NewName')),
      wait: const Duration(seconds: 3),
      expect: () => [SettingsLoading(), UserNameLoaded('NewName', true)],
      verify: (_) {
        verify(() => mockJoinMemberUseCase('NewName')).called(1);
      },
    );

    blocTest<SettingsBloc, SettingsState>(
      'calls languageUseCase.setLanguage on SwitchLanguageEvent',
      build: () {
        when(
          () => mockLanguageUseCase.setLanguage(any()),
        ).thenAnswer((_) async {});
        return settingsBloc;
      },
      act: (bloc) => bloc.add(SwitchLanguageEvent('en')),
      expect: () => [],
      verify: (_) {
        verify(() => mockLanguageUseCase.setLanguage(any())).called(1);
      },
    );

    blocTest<SettingsBloc, SettingsState>(
      'emits [SettingsLoading, UserNameLoaded] after ClearCacheEvent',
      build: () {
        when(() => mockClearCacheUseCase()).thenAnswer((_) async => {});
        when(() => mockCheckIsMemberUseCase()).thenAnswer((_) async => true);
        when(
          () => mockGetUsernameUseCase(),
        ).thenAnswer((_) async => 'CachedUser');
        return settingsBloc;
      },
      act: (bloc) => bloc.add(ClearCacheEvent()),
      wait: const Duration(seconds: 3),
      expect: () => [SettingsLoading(), UserNameLoaded('CachedUser', true)],
      verify: (_) {
        verify(() => mockClearCacheUseCase()).called(1);
      },
    );
  });
}
