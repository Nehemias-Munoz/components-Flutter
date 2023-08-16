import 'package:flutter/material.dart';
import 'package:flutter_components/src/routes/app_routes.dart';
import 'package:flutter_components/src/screens/error_screen.dart';
import 'package:flutter_components/src/screens/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
