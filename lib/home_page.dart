import 'package:app_inputs/inputs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text("Inputs"),
      ),
      body: Column(
        children: const [
          Inputs(
              labelNombre: 'Nombre Usuario', 
              helpText: "Este campo es para el nombre",
              icon: Icon(Icons.people_alt_rounded),
              icon2: Icon(Icons.people_alt_rounded), 
              type: TextInputType.name,
            ),
          Inputs(
              labelNombre: 'Dirección', 
              helpText: "Este campo es para el dirrecion",
              icon: Icon(Icons.mail_outline_rounded), 
              icon2: Icon(Icons.mail_rounded), 
              type: TextInputType.emailAddress,
            ),
          Inputs(
              labelNombre: 'Telefono', 
              helpText: "Este campo es para el telefono",
              icon: Icon(Icons.phone_android_rounded), 
              icon2: Icon(Icons.numbers_rounded), 
              type: TextInputType.phone,
            )
        ],
      ) ,
    );
  }
}