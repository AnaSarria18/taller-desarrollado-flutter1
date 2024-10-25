/* El widget Expanded expande su hijo para ocupar todo el 
espacio disponible dentro de un widget padre como Column o Row. */

import 'package:flutter/material.dart';

void main() => runApp(ExpandedExample());

class ExpandedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Expanded Example')),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 122, 22, 126),
                child: Center(child: Text('Expanded 1')),
              ),
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 78, 243, 83),
                child: Center(child: Text('Expanded 2')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
