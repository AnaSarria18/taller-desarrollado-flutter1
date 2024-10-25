/* El widget SingleChildScrollView permite desplazar un único widget hijo cuando su contenido excede el 
espacio disponible. */

import 'package:flutter/material.dart';

void main() => runApp(SingleChildScrollViewExample());

class SingleChildScrollViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('SingleChildScrollView Example')),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(100, (index) => Text('Item $index')),
          ),
        ),
      ),
    );
  }
}
