/* El widget Icon se utiliza para mostrar íconos gráficos en Flutter. Puedes usar los íconos predefinidos
de la biblioteca Icons o crear los tuyos. */

import 'package:flutter/material.dart';

void main() => runApp(IconExample());

class IconExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Icon Example')),
        body: Center(
          child: Icon(
            Icons.star,
            size: 100,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
