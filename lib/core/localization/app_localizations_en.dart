// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcomeTitle => 'Welcome to\nReward Campaigns';

  @override
  String get welcomeSubtitle => 'Explore available offers and rewards.';

  @override
  String get welcomeRemark =>
      'Before we get started, please choose your language.';

  @override
  String get welcomeRemarkSubtitle =>
      'You can change it later in the settings menu.';

  @override
  String get getStarted => 'Get started';

  @override
  String get english => 'English';

  @override
  String get thai => 'Thai';

  @override
  String get campaigns => 'Campaign';

  @override
  String get members => 'Membership';

  @override
  String get refer => 'Refer Friends';

  @override
  String get points => 'Point';

  @override
  String get campaignsTitle => 'Campaign List';

  @override
  String get membersTitle => 'Membership';

  @override
  String get referTitle => 'Refer-a-Friend';

  @override
  String get pointsTitle => 'Points Tracker';
}
