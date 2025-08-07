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

  @override
  String get campaign_join_now => 'Join Now Campaign';

  @override
  String get campaign_subscribe => 'Subscribe Campaigns';

  @override
  String get campaign_redeem => 'Redeem Point Campaign';

  @override
  String get seeAll => 'See All';

  @override
  String get copied_to_clipboard => 'Copied to clipboard';

  @override
  String share_referral_text(Object referralLink) {
    return 'Join the app with my referral: $referralLink';
  }

  @override
  String get share => 'Share';

  @override
  String get copy => 'Copy';

  @override
  String get share_referral_description =>
      'Share your referral code and earn rewards when they join!';

  @override
  String get share_referral_title => 'Invite your friends';

  @override
  String get member_description => 'Thank you for joining our community.';

  @override
  String get non_member_description =>
      'Join now to unlock exclusive features and stay connected!';

  @override
  String member_title(Object username) {
    return 'Welcome Back, $username';
  }

  @override
  String get non_member_title => 'Become a Member!';

  @override
  String get join_now => 'Join Now';

  @override
  String get sign_in_title => 'Enter your name';

  @override
  String get username_hint => 'Username';

  @override
  String get cancel => 'Cancel';
}
