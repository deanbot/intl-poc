#!/bin/sh

flutter pub run intl_generator:generate_from_arb --output-dir=lib/localization/dart_files --no-use-deferred-loading lib/localization/app_localization.dart lib/localization/arb_files/intl_en.arb lib/localization/arb_files/intl_it.arb lib/localization/arb_files/intl_es.arb