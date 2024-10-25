/* El widget Column permite organizar widgets en una columna vertical. Es muy útil para alinear varios widgets uno encima del otro en la pantalla. */

import 'package:flutter/material.dart';

void main() => runApp(ColumnExample());

class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Column Example')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('First item'),
            Text('Second item'),
            Text('Third item'),
          ],
        ),
      ),
    );
  }
}
