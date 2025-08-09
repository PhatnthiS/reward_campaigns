import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reward_campaigns/core/constants/enums.dart';
import 'package:reward_campaigns/core/localization/app_localizations.dart';
import 'locale_provider.dart';

extension LocalizationExt on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this)!;
}

extension ProviderExt on BuildContext {
  LocaleProvider get provider =>
      Provider.of<LocaleProvider>(this, listen: false);

  Locale get locale =>
      Provider
          .of<LocaleProvider>(this)
          .locale;
}

extension PointstExtension on int {
  String formatPoints(TransactionType type) {
    switch (type) {
      case TransactionType.earn:
        return '+$this';
      case TransactionType.redeem:
        return '-$this';
      default:
        return '0';
    }
  }

  Color pointColor(TransactionType type) {
    switch (type) {
      case TransactionType.earn:
        return Colors.green;
      case TransactionType.redeem:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}




