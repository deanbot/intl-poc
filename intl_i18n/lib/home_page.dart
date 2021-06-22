import 'package:flutter/material.dart';
import 'localization/localization.dart';

typedef LocaleChangeHandler = void Function(Locale locale);

class HomePage  extends StatelessWidget {
  final LocaleChangeHandler _handler;

  const HomePage({Key? key, required LocaleChangeHandler handler})
      : _handler = handler,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(context.hello),
        ),
        body: Center(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(context.changeLocale),
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
              child: Text(context.helloWorld, style: const TextStyle(fontSize: 20),),
            ),
          ],
        )));
  }
}
