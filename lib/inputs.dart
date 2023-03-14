import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key, this.labelNombre = "", this.helpText = "" ,this.icon = const Icon(null), this.icon2 = const Icon(null), this.type = TextInputType.text});
  final String labelNombre;
  final Icon icon;
  final Icon icon2;
  final String helpText;
  final TextInputType? type;
  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          icon: widget.icon,
          iconColor: Colors.indigo,
          labelText: widget.labelNombre,
          helperText: widget.helpText,
          contentPadding: const EdgeInsets.all(20),
          prefixIcon: widget.icon2,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal)
          )
        ),
        keyboardType: widget.type,
      ),
    );
  }
}