import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      "first_name": 'Nehemias',
      "last_name": 'Muñoz',
      "email": 'nehemiasmunoz@gmail.com',
      "password": '123456',
      "role": 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs and Form"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: myFormKey, // Identificar nuestro formulario
            child: Column(
              children: [
                CustomInputField(
                  formProperty: 'first_name',
                  formValues: formValues,
                  textInputType: TextInputType.name,
                  labelText: "Nombre",
                  hintText: "Nombre del usuario",
                  prefixIconData: Icons.person,
                ),
                const SizedBox(height: 20.0),
                CustomInputField(
                  formProperty: 'last_name',
                  formValues: formValues,
                  textInputType: TextInputType.name,
                  labelText: "Apellido",
                  hintText: "Apellido del usuario",
                ),
                const SizedBox(height: 20.0),
                CustomInputField(
                  formProperty: 'email',
                  formValues: formValues,
                  textInputType: TextInputType.emailAddress,
                  labelText: "Email",
                  hintText: "Apellido del usuario",
                ),
                const SizedBox(height: 20.0),
                CustomInputField(
                  formProperty: "password",
                  formValues: formValues,
                  obscureText: true,
                  labelText: "Contraseña",
                  hintText: "Ingrese una contraseña",
                ),
                const SizedBox(height: 20.0),
                DropdownButtonFormField(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(child: Text("Admin"), value: "Admin"),
                      DropdownMenuItem(
                          child: Text("Developer"), value: "Developer"),
                      DropdownMenuItem(child: Text("User"), value: "User")
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? "User";
                    }),
                ElevatedButton(
                  onPressed: () {
                    //Minimizar teclado
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print("Formulario No validado");
                      return;
                    }
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text("Guardar", style: TextStyle(fontSize: 20.0)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
