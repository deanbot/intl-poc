
import 'package:flutter/material.dart';

class AppLocalization {
  final Locale local;
  const AppLocalization(this.local);

  static AppLocalization? of (BuildContext context) => Localizations.of<AppLocalization>(context, AppLocalization);

  // ignore: prefer_final_fields
  static Map<String, Map<String, String>> _localizedValues = {
    "en": {
      "hello": "Hello!",
      "hello_world": "Hello world",
      "change_locale": "Change locale:"
    },
    "it": {
      "hello": "Ciao!",
      "hello_world": "Ciao mondo",
      "change_locale": "Cambia locale"
    },
    "es": {
      "hello": "Hola!",
      "hello_world": "Hola Mundo",
      "change_locale": "Cambiar locale"
    }
  };
}

extension LocalizationExt on BuildContext {
  String localize(String value) {
    // get devices local
    final code = AppLocalization.of(this)?.local.languageCode ?? "en";
    final database = AppLocalization._localizedValues;

    // check if local is supported
    if (database.containsKey(code)) {
      return database[code]?[value] ?? "-";
    } else {
      // default to en
      return database["en"]?[value] ?? "-";
    }
  }
}