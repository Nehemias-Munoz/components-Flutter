import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController _scrollController =
      ScrollController(); //Conocer el estado del scroll

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      //ejecutar addImages cuando estemos cerca del final
      if (_scrollController.position.pixels + 1 >=
          _scrollController.position.maxScrollExtent) {
        setState(() {
          addImages();
        });
      }
    });
  }

  void addImages() {
    //Obtenemos ultimo valor
    final int lastId = imagesId.last;
    //sumammos el utimo id con el iterable y añadimos el nuevo valor
    imagesId.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true, //remover padding superior
        removeBottom: true, //remover padding inferior
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          controller: _scrollController,
          itemCount: imagesId.length,
          itemBuilder: (BuildContext context, index) => FadeInImage(
            fit: BoxFit.cover,
            width: double.infinity, //ten todo el ancho disponible
            height: 300, //tamaño estatico
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage(
                "https://picsum.photos/id/${imagesId[index]}/500/200"),
          ),
        ),
      ),
    );
  }
}
