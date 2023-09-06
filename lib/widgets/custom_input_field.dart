import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIconData;
  final IconData? prefixIconData;
  final TextInputType? textInputType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIconData,
    this.prefixIconData,
    this.textInputType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText ?? "No asignado",
        labelText: labelText ?? "No asignado",
        helperText: helperText,
        suffixIcon: suffixIconData == null ? Icon(suffixIconData) : null,
        prefixIcon: prefixIconData != null ? Icon(prefixIconData) : null,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
      ),
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null) {
          return "Este campo es requerido";
        } else if (value.length < 3) {
          return "Minimo de 3 caracteres";
        } else {
          return null;
        }
      },
    );
  }
}
