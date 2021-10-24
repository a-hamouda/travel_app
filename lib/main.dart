import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel_app/route/router.gr.dart';

import 'screens/categories/categories_screen.dart';

void main() {
  runApp(const MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _router = AppRouter();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _router.delegate(),
      routeInformationProvider: _router.routeInfoProvider(),
      routeInformationParser: _router.defaultRouteParser(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale.fromSubtags(languageCode: 'en'),
        Locale.fromSubtags(languageCode: 'ar'),
      ],
      locale: const Locale.fromSubtags(languageCode: 'ar'),
      title: 'Travel app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.amber,
        ),
        fontFamily: 'Noto Kufi',
        splashColor: Colors.amber.withOpacity(0.2),
      ),
    );
  }
}
