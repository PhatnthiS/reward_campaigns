import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reward_campaigns/core/constants/constant.dart';
import 'package:reward_campaigns/core/route/route.dart';
import 'package:reward_campaigns/core/utils/extensions.dart';
import 'core/localization/app_localizations.dart';
import 'core/utils/locale_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LocaleProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appTitle,
      locale: context.locale,
      routerConfig: router,
      theme: ThemeData(fontFamily: 'Kanit'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
