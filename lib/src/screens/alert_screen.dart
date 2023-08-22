import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancelar")),
          FilledButton(onPressed: () {}, child: const Text("Aceptar"))
        ],
        title: const Text("Alerta 1"),
        elevation: .5,
        content:const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Contenido de la alerta"),
            SizedBox(
              height: 10,
            ),
            FlutterLogo(
              size: 100,
            ),
          ],
        ),
      ),
    );
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true, // Salir al tocar fuera
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text("Alerta 1"),
        content: Column(children: [
          FlutterLogo(),
        ]),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancelar"),
          ),
          TextButton(onPressed: () {}, child: const Text("Aceptar"))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Platform.isIOS ? displayDialogIOS(context): displayDialogAndroid(context),
          child: const Text('Mostrar alerta'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
      ),
    );
  }
}
