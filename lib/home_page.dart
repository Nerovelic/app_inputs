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
          Inputs(labelNombre: 'Nombre Usuario', icon: Icon(Icons.people_alt_rounded),),
          Inputs(labelNombre: 'Dirección', icon: Icon(Icons.mail_outline_rounded),),
          Inputs(labelNombre: 'Telefono', icon: Icon(Icons.phone_android_rounded), icon2: Icon(Icons.numbers_rounded),)
        ],
      ) ,
    );
  }
}