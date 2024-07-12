import 'package:flutter/material.dart';

class   Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Inicio'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Bienvenido',style: TextStyle(fontSize: 25),),
          Text('rmoralesd@unah.hn'),
          Text('20202001873')] ),
    ));
  }
}