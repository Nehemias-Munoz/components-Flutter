import 'package:flutter/material.dart';
import 'package:flutter_components/src/screens/listview1_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListView1Screen(),
    );
  }
}
