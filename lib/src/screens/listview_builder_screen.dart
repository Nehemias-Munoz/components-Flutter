import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true, //remover padding superior
        removeBottom: true, //remover padding inferior
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, index) => FadeInImage(
            fit: BoxFit.cover,
            width: double.infinity, //ten todo el ancho disponible
            height: 300, //tamaño estatico
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage("https://picsum.photos/id/${index}/500/200"),
          ),
        ),
      ),
    );
  }
}
