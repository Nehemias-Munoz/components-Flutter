import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = ['Spyro', 'GTA SA', 'Pacman', 'Megaman'];

    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview 1"),
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView.separated(
          separatorBuilder: (__, _) => const Divider(),
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(
              Icons.ac_unit_rounded,
              color: Colors.indigo,
            ),
            title: Text(
              options[index],
            ),
            onTap: () => print(options[index]),
          ),
        ));
  }
}
