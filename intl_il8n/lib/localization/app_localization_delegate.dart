import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'app_localization.dart';

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => ["en", "it", "es"].contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) => SynchronousFuture<AppLocalization>(
    AppLocalization(locale)
  );

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) => false;
}a