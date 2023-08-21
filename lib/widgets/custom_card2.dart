import 'package:flutter/material.dart';
import 'package:flutter_components/src/theme/app_theme.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppTheme.lightPrimaryColor.withOpacity(.5),
      clipBehavior: Clip.antiAlias, //adecuar contenido al tamaño y borde
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          const FadeInImage(
            fadeInDuration: Duration(milliseconds: 300),
            fit: BoxFit.cover, // Como se adapta la imagen
            height: 230,
            width: double.infinity, // Utilizar todo el tamaño disponible
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://www.hdwallpapers.in/download/beautiful_lake_landscape_scenery_4k_8k-HD.jpg'),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text('Un hermoso paisaje'),
          )
        ],
      ),
    );
  }
}
