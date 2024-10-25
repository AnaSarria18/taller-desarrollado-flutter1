/* El widget Form es un contenedor para agrupar varios campos de entrada que pueden ser 
validados en conjunto. */

import 'package:flutter/material.dart';

void main() => runApp(FormExample());

class FormExample extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Form Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Introduce tu nombre',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingresa tu nombre';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Procesamieno de datos')),
                      );
                    }
                  },
                  child: Text('entregar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
