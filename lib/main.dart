import 'package:flutter/material.dart';
import 'package:travel_app/Screens/Home_Screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel_app/Screens/Tabe_Screen.dart';

void main() {
  runApp(const Travel_App());
}

class Travel_App extends StatelessWidget {
  const Travel_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'), // Arabic
      ],
      debugShowCheckedModeBanner: false,
      home: TabeScreen(),
    );
  }
}
