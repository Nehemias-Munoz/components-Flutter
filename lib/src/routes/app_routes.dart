import 'package:flutter/material.dart';
import 'package:flutter_components/src/models/models.dart';
import 'package:flutter_components/src/screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOption = <MenuOption>[
    MenuOption(
        route: "listview",
        icon: Icons.list,
        title: "Listview",
        screen: const ListView1Screen()),
    MenuOption(
        route: "alert",
        icon: Icons.warning_amber,
        title: "Alert Screen",
        screen: const AlertScreen()),
    MenuOption(
        route: "card",
        icon: Icons.check_box_outline_blank_rounded,
        title: "Card",
        screen: const CardScreen()),
    MenuOption(
      route: "avatar",
      icon: Icons.supervised_user_circle_outlined,
      title: "Avatar Screen",
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: "animated",
      icon: Icons.animation,
      title: "Animated Screen",
      screen: const AnimatedScreen(),
    )
  ];

  static Map<String, Widget Function(BuildContext context)> getRoutes() {
    Map<String, Widget Function(BuildContext context)> routes = {};
    routes.addAll({"home": (context) => const HomeScreen()});
    for (MenuOption element in menuOption) {
      routes.addAll({element.route: (context) => element.screen});
    }
    return routes;
  }
  //// Metodo statico sin personalizar
  // static Map<String, Widget Function(BuildContext context)> routes = {
  //   "home": (context) => const HomeScreen(),
  //   "listview": (BuildContext context) => const ListView1Screen(),
  //   "alert": (context) => const AlertScreen(),
  //   "card": (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
}
