import 'package:flutter/material.dart';
import 'package:flutter_i18n/localization/localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale.fromSubtags(languageCode: "en");

  void setLocale(Locale value) {
    setState(() {
      _locale = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: _locale,
      home: HomePage(handler: setLocale),
      localizationsDelegates: const [
        AppLocalizationDelegate(),

        // Global localization delegates provide localized
        // strings for material and cupertino libs, and reading direction
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],

      supportedLocales: const [
        Locale.fromSubtags(languageCode: "en"),
        Locale.fromSubtags(languageCode: "it"),
        Locale.fromSubtags(languageCode: "es"),
      ],
    );
  }
}