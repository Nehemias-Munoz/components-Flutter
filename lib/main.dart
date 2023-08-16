import 'package:flutter/material.dart';
import 'package:flutter_components/src/screens/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home",
      routes: {
        "home": (context) => const HomeScreen(),
        "listview": (BuildContext context) => const ListView1Screen(),
        "alert": (context) => const AlertScreen(),
        "card": (context) => const CardScreen(),
      },
    );
  }
}
