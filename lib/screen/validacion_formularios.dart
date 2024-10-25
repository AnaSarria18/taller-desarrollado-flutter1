import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FormValidationExample(),
  ));
}

class FormValidationExample extends StatefulWidget {
  @override
  _FormValidationExampleState createState() => _FormValidationExampleState();
}

class _FormValidationExampleState extends State<FormValidationExample> {
  // Clave para el estado del formulario
  final _formKey = GlobalKey<FormState>();

  // Controladores para los campos de texto
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  // Función para validar y enviar el formulario
  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Si el formulario es válido, se mostrar un mensaje de verdad
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Formulario válido')),
      );
    } else {
      // Si el formulario no es válido, se mostrar un mensaje de error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Formulario no válido')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario con Validación'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, // Asigna la clave del formulario
          child: Column(
            children: [
              // Campo de nombre
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su nombre';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              // Campo de correo electrónico
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Correo Electrónico'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su correo electrónico';
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Por favor ingrese un correo electrónico válido';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              // Campo de teléfono
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Teléfono'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su número de teléfono';
                  } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                    return 'Por favor ingrese un número de teléfono válido de 10 dígitos';
                  }
                  return null;
                },
              ),
              SizedBox(height: 35),
              // Botón de Enviar
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
