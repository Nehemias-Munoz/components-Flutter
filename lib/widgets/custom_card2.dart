import 'package:flutter/material.dart';
import 'package:flutter_components/src/theme/app_theme.dart';

class CustomCard2 extends StatelessWidget {
  final String imageUrl;
  final String? description;
  const CustomCard2({super.key, required this.imageUrl, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppTheme.lightPrimaryColor.withOpacity(.5),
      clipBehavior: Clip.antiAlias, //adecuar contenido al tamaño y borde
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            fadeInDuration: const Duration(milliseconds: 300),
            fit: BoxFit.cover, // Como se adapta la imagen
            height: 230,
            width: double.infinity, // Utilizar todo el tamaño disponible
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageUrl),
          ),
          if (description != null)
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(description ?? 'No title'),
            )
        ],
      ),
    );
  }
}
