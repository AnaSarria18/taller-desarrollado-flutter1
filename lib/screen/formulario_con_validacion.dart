import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyForm(),
  ));
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  // Clave para acceder al estado del formulario
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario con Validación'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Asignamos la clave al Formulario
          child: Column(
            children: [
              // Campo de texto con validación
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ingresa tu nombre',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  // aqui  asegura que el campo no esté vacío
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa un nombre'; // Mensaje de error
                  }
                  return null; // Devuelve null si no hay error
                },
              ),
              SizedBox(height: 20),
              // Botón para enviar el formulario
              ElevatedButton(
                onPressed: () {
                  // Validamos el formulario
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Formulario válido')),
                    );
                  }
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
