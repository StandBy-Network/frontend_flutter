import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './assist/ui/screens/my_profile.dart';
import './common/ui/themes/theme.dart';
import './assist/utils/app_localizations.dart';
import 'common/ui/application_switcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home:  MyProfile(),
      home:  ApplicationSwitcher(),
      theme: basicTheme(),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('hu', 'HU'),
      ],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}