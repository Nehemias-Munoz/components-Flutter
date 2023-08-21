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
          SizedBox(height: 10),
          CustomCard2(
            imageUrl:
                'https://www.hdwallpapers.in/download/beautiful_lake_landscape_scenery_4k_8k-HD.jpg',
            description: 'Montañas y lago',
          ),
          SizedBox(height: 10),
          CustomCard2(
            imageUrl:
                'https://free4kwallpapers.com/uploads/originals/2015/04/23/flower-with-mountain-landscape.jpg',
          ),
          SizedBox(height: 100)
        ],
      ),
    );
  }
}
