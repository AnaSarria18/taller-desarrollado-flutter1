import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Taller 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ElevatedButton Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Acción cuando se presiona el botón
              print('ElevatedButton Pressed');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Color de fondo del botón (anteriormente 'primary')
              foregroundColor: Colors.white, // Color del texto (anteriormente 'onPrimary')
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Padding
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Estilo del texto
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Bordes redondeados
              ),
              elevation: 5, // Sombra (elevación) del botón
            ),
            child: Text('da click aqui'),
          ),
        ),
      ),
    );
  }
}
