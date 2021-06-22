import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart_files/messages_all.dart';

class AppLocalization {
  final Locale locale;
  const AppLocalization(this.locale);

  static AppLocalization? of(BuildContext context) => Localizations.of<AppLocalization>(context, AppLocalization);

  static Future<AppLocalization> load(Locale locale) async {
    final String localeName = Intl.canonicalizedLocale(
      locale.languageCode
    );

    // produces an error until arb file generation
    await initializeMessages(localeName);

    Intl.defaultLocale = localeName;

    return AppLocalization(locale);
  }

  String get helloWorld => Intl.message(
    "Hello world!",
    name: "helloWorld"
  );

  String get hello => Intl.message(
    "Hello!",
    name: "hello"
  );

  String get changeLocale => Intl.message(
    "Change Locale:",
    name: "changeLocale"
  );
}

extension LocalizationExt on BuildContext {
  String get hello => AppLocalization.of(this)?.hello ?? "-";
  String get helloWorld => AppLocalization.of(this)?.helloWorld ?? "-";
  String get changeLocale => AppLocalization.of(this)?.changeLocale ?? "-";
}