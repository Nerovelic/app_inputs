import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key, required this.labelNombre, required this.icon,this.icon2 = const Icon(Icons.numbers_rounded)});
  final String labelNombre;
  final Icon icon;
  final Icon icon2;
  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: widget.icon,
          iconColor: Colors.indigo,
          labelText: widget.labelNombre,
          helperText: "En este campo solo se puede ingresar la contraseña",
          contentPadding: const EdgeInsets.all(20),
          prefixIcon: widget.icon2,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal)
          )
        ),
      ),
    );
  }
}