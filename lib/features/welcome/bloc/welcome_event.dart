part of 'welcome_bloc.dart';

abstract class WelcomeEvent {}

class CompleteOnboardingEvent extends WelcomeEvent {}

class SetLanguageEvent extends WelcomeEvent {
  final Language language;

  SetLanguageEvent(this.language);

  List<Object?> get props => [language];
}
