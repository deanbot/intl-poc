# Internationalization (i18n) & Localization (l10n)

## Flutter localization

See `flutter_i18n` project.

Easy setup. Translations managed in `lib/localization/app_localization.dart`.

## Flutter Gen localization

See `gen_i18n` project.

Arb-first approach, see `arb` files in `lib/l10n`. A synthetic package is generated in `.dart_tool` on app run which translates arb files into dart files (to be later imported from `flutter_gen` package). Arb processing is configured in `l10n.yaml`.

## Intl localization

See `intl_i18n` project, [Intl](https://pub.dev/packages/intl) and [Intl_generator](https://pub.dev/packages/intl_generator).

Message-first approach relying on command line utilities (see `tools` directory) for arb template generation and arb to dart parsing. 