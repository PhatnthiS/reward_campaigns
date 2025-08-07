import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_th.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('th'),
  ];

  /// No description provided for @welcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to\nReward Campaigns'**
  String get welcomeTitle;

  /// No description provided for @welcomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Explore available offers and rewards.'**
  String get welcomeSubtitle;

  /// No description provided for @welcomeRemark.
  ///
  /// In en, this message translates to:
  /// **'Before we get started, please choose your language.'**
  String get welcomeRemark;

  /// No description provided for @welcomeRemarkSubtitle.
  ///
  /// In en, this message translates to:
  /// **'You can change it later in the settings menu.'**
  String get welcomeRemarkSubtitle;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get getStarted;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @thai.
  ///
  /// In en, this message translates to:
  /// **'Thai'**
  String get thai;

  /// No description provided for @campaigns.
  ///
  /// In en, this message translates to:
  /// **'Campaign'**
  String get campaigns;

  /// No description provided for @members.
  ///
  /// In en, this message translates to:
  /// **'Membership'**
  String get members;

  /// No description provided for @refer.
  ///
  /// In en, this message translates to:
  /// **'Refer Friends'**
  String get refer;

  /// No description provided for @points.
  ///
  /// In en, this message translates to:
  /// **'Point'**
  String get points;

  /// No description provided for @campaignsTitle.
  ///
  /// In en, this message translates to:
  /// **'Campaign List'**
  String get campaignsTitle;

  /// No description provided for @membersTitle.
  ///
  /// In en, this message translates to:
  /// **'Membership'**
  String get membersTitle;

  /// No description provided for @referTitle.
  ///
  /// In en, this message translates to:
  /// **'Refer-a-Friend'**
  String get referTitle;

  /// No description provided for @pointsTitle.
  ///
  /// In en, this message translates to:
  /// **'Points Tracker'**
  String get pointsTitle;

  /// No description provided for @campaign_join_now.
  ///
  /// In en, this message translates to:
  /// **'Join Now Campaign'**
  String get campaign_join_now;

  /// No description provided for @campaign_subscribe.
  ///
  /// In en, this message translates to:
  /// **'Subscribe Campaigns'**
  String get campaign_subscribe;

  /// No description provided for @campaign_redeem.
  ///
  /// In en, this message translates to:
  /// **'Redeem Point Campaign'**
  String get campaign_redeem;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// No description provided for @copied_to_clipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copied_to_clipboard;

  /// No description provided for @share_referral_text.
  ///
  /// In en, this message translates to:
  /// **'Join the app with my referral: {referralLink}'**
  String share_referral_text(Object referralLink);

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @share_referral_description.
  ///
  /// In en, this message translates to:
  /// **'Share your referral code and earn rewards when they join!'**
  String get share_referral_description;

  /// No description provided for @share_referral_title.
  ///
  /// In en, this message translates to:
  /// **'Invite your friends'**
  String get share_referral_title;

  /// No description provided for @member_description.
  ///
  /// In en, this message translates to:
  /// **'Thank you for joining our community.'**
  String get member_description;

  /// No description provided for @non_member_description.
  ///
  /// In en, this message translates to:
  /// **'Join now to unlock exclusive features and stay connected!'**
  String get non_member_description;

  /// No description provided for @member_title.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back, {username}'**
  String member_title(Object username);

  /// No description provided for @non_member_title.
  ///
  /// In en, this message translates to:
  /// **'Become a Member!'**
  String get non_member_title;

  /// No description provided for @join_now.
  ///
  /// In en, this message translates to:
  /// **'Join Now'**
  String get join_now;

  /// No description provided for @sign_in_title.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get sign_in_title;

  /// No description provided for @username_hint.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username_hint;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'th'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'th':
      return AppLocalizationsTh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
