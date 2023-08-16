import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HomeScreen"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => const ListTile(
                  title: Text("route name"),
                  leading: Icon(Icons.accessibility_new_outlined),
                  trailing: Icon(Icons.arrow_circle_right_outlined),
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
