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

  /// No description provided for @welcome_title.
  ///
  /// In en, this message translates to:
  /// **'Welcome to\nReward Campaigns'**
  String get welcome_title;

  /// No description provided for @welcome_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Explore available offers and rewards.'**
  String get welcome_subtitle;

  /// No description provided for @welcome_remark.
  ///
  /// In en, this message translates to:
  /// **'Before we get started, please choose your language.'**
  String get welcome_remark;

  /// No description provided for @welcome_remark_subtitle.
  ///
  /// In en, this message translates to:
  /// **'You can change it later in the settings menu.'**
  String get welcome_remark_subtitle;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get get_started;

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
  /// **'Friends'**
  String get refer;

  /// No description provided for @points.
  ///
  /// In en, this message translates to:
  /// **'Point'**
  String get points;

  /// No description provided for @campaigns_title.
  ///
  /// In en, this message translates to:
  /// **'Campaign List'**
  String get campaigns_title;

  /// No description provided for @members_title.
  ///
  /// In en, this message translates to:
  /// **'Membership'**
  String get members_title;

  /// No description provided for @refer_title.
  ///
  /// In en, this message translates to:
  /// **'Refer-a-Friend'**
  String get refer_title;

  /// No description provided for @points_title.
  ///
  /// In en, this message translates to:
  /// **'Points Tracker'**
  String get points_title;

  /// No description provided for @campaign_join_now.
  ///
  /// In en, this message translates to:
  /// **'Join Now Campaigns'**
  String get campaign_join_now;

  /// No description provided for @campaign_subscribe.
  ///
  /// In en, this message translates to:
  /// **'Subscribe Campaigns'**
  String get campaign_subscribe;

  /// No description provided for @campaign_redeem.
  ///
  /// In en, this message translates to:
  /// **'Redeem Point Campaigns'**
  String get campaign_redeem;

  /// No description provided for @see_all.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get see_all;

  /// No description provided for @subscribe_now.
  ///
  /// In en, this message translates to:
  /// **'Subscribe Now'**
  String get subscribe_now;

  /// No description provided for @redeem_now.
  ///
  /// In en, this message translates to:
  /// **'Redeem Now'**
  String get redeem_now;

  /// No description provided for @join_success.
  ///
  /// In en, this message translates to:
  /// **'Joined \"{title}\" successfully'**
  String join_success(Object title);

  /// No description provided for @subscribe_success.
  ///
  /// In en, this message translates to:
  /// **'Subscribed to \"{title}\" successfully'**
  String subscribe_success(Object title);

  /// No description provided for @redeem_success.
  ///
  /// In en, this message translates to:
  /// **'Redeemed \"{title}\" successfully'**
  String redeem_success(Object title);

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

  /// No description provided for @current_points.
  ///
  /// In en, this message translates to:
  /// **'Current Points'**
  String get current_points;

  /// No description provided for @points_value.
  ///
  /// In en, this message translates to:
  /// **'{currentPoints} pts'**
  String points_value(Object currentPoints);

  /// No description provided for @transaction_history.
  ///
  /// In en, this message translates to:
  /// **'Transaction History'**
  String get transaction_history;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @setting_title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get setting_title;

  /// No description provided for @clear_cache.
  ///
  /// In en, this message translates to:
  /// **'Clear Cache'**
  String get clear_cache;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @change_username.
  ///
  /// In en, this message translates to:
  /// **'Change Username'**
  String get change_username;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @clear_cache_complete.
  ///
  /// In en, this message translates to:
  /// **'Clear cache complete'**
  String get clear_cache_complete;
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
