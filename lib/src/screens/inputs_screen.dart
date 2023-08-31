import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs and Form"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomInputField(
                textInputType: TextInputType.name,
                labelText: "Nombre",
                hintText: "Nombre del usuario",
                prefixIconData: Icons.person,
              ),
              SizedBox(height: 20.0),
              CustomInputField(
                textInputType: TextInputType.name,
                labelText: "Apellido",
                hintText: "Apellido del usuario",
              ),
              SizedBox(height: 20.0),
              CustomInputField(
                textInputType: TextInputType.emailAddress,
                labelText: "Email",
                hintText: "Apellido del usuario",
              ),
              SizedBox(height: 20.0),
              CustomInputField(
                obscureText: true,
                labelText: "Contraseña",
                hintText: "Ingrese una contraseña",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
