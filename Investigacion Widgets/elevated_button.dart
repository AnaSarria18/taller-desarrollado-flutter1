/* **Descripción**:  
El widget `ElevatedButton` es un botón elevado que se utiliza para realizar acciones cuando el usuario lo presiona. Es ideal para llamar la atención sobre acciones importantes dentro de la interfaz de usuario. */

import 'package:flutter/material.dart';

void main() => runApp(ElevatedButtonExample());

class ElevatedButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ElevatedButton Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('Button Pressed!');
            },
            child: Text('Click me'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Fondo del botón
              foregroundColor: Colors.white, // Color del texto
            ),
          ),
        ),
      ),
    );
  }
}
