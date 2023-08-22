import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
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
        content: Column(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => displayDialog(context),
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
