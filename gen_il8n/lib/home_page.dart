import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

typedef LocaleChangeHandler = void Function(Locale locale);

class HomePage  extends StatelessWidget {
  LocaleChangeHandler _handler;

  HomePage({Key? key, required LocaleChangeHandler handler})
      : _handler = handler,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.hello),
        ),
        body: Center(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(AppLocalizations.of(context)!.changeLocale),

              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _handler(const Locale.fromSubtags(languageCode: "en"));
                    },
                    child: const Text("English")),
                ElevatedButton(
                    onPressed: () {
                      _handler(const Locale.fromSubtags(languageCode: "es"));
                    },
                    child: const Text("Spanish")),
                ElevatedButton(
                    onPressed: () {
                      _handler(const Locale.fromSubtags(languageCode: "it"));
                    },
                    child: const Text("Italian")),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(AppLocalizations.of(context)!.helloWorld, style: const TextStyle(fontSize: 20),),
            ),
          ],
        )));
  }
}
