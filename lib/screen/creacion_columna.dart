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
          title: Text('Column Example'),
        ),
        body: Center(
          child: Column(
            // Alinear los hijos al inicio del eje horizontal
            crossAxisAlignment: CrossAxisAlignment.start,
            // Centrar los hijos verticalmente en el eje principal
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Elemento 1',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                'Elemento 2',
                style: TextStyle(fontSize: 24),
              ),
              Text(
                'Elemento 3',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
