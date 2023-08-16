import 'package:flutter/material.dart';
import 'package:flutter_components/src/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(AppRoutes.menuOption[index].title),
          leading: Icon(AppRoutes.menuOption[index].icon),
          trailing: const Icon(Icons.arrow_circle_right_outlined),
          onTap: () =>
              Navigator.pushNamed(context, AppRoutes.menuOption[index].route),
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: AppRoutes.menuOption.length,
      ),
    );
  }
}
