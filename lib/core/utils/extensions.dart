import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reward_campaigns/core/localization/app_localizations.dart';
import 'locale_provider.dart';

extension LocalizationExt on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this)!;
}

extension ProviderExt on BuildContext {
  LocaleProvider get provider =>
      Provider.of<LocaleProvider>(this, listen: false);

  Locale get locale => Provider.of<LocaleProvider>(this).locale;
}
