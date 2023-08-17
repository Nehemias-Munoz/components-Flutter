import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text("Title"),
            leading: Icon(Icons.image),
            subtitle: Text(
                "Velit laborum aute aliquip adipisicing cupidatat amet exercitation exercitation deserunt dolor deserunt. "),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("OK"),
                ),
                TextButton(onPressed: () {}, child: const Text("Cancel"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
