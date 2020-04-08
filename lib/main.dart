import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frontend_flutter/contacts/my_contacts.dart';
import 'package:frontend_flutter/ui/screens/my_profile.dart';
import 'package:frontend_flutter/ui/screens/sign_up.dart';
import 'package:frontend_flutter/utils/theme.dart';

import 'utils/app_localizations.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MyProfile(),
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