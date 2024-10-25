/* El widget InputDecoration proporciona la decoración para 
los campos de entrada (TextField). Se puede usar para agregar etiquetas, bordes, íconos,
y sugerencias. */

import 'package:flutter/material.dart';

void main() => runApp(InputDecorationExample());

class InputDecorationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ejemplo de InputDecoration')), // Título en español
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Ingrese su nombre', // Texto en español
              hintText: 'Nombre', // Texto en español
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
