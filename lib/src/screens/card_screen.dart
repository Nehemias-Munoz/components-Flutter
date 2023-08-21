import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Screen"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        children: const [
          CustomCard1(),
          SizedBox(
            height: 10,
          ),
          CustomCard2(),
          SizedBox(
            height: 10,
          ),
          CustomCard2(),
        ],
      ),
    );
  }
}
