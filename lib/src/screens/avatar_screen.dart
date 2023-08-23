import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar Screen"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text("SL"),
            ),
          ),
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage(
              "https://31minutosoficial.cl/wp-content/uploads/2014/02/thumb-rombosman.png"),
        ),
      ),
    );
  }
}
