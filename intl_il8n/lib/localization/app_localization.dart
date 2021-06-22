import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppLocalization {
  final Locale locale;
  const AppLocalization(this.locale);

  static AppLocalization? of(BuildContext context) => Localizations.of<AppLocalization>(context, AppLocalization);

  static Future<AppLocalization> load(Locale locale) async {
    final String localName = Intl.canonicalizedLocale(
      locale.languageCode
    );

    await initializeMessages(localName);

    Intl.defaultLocale = localName;

    return AppLocalization(locale);
  }
}