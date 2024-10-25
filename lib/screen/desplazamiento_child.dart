import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ScrollExample(),
  ));
}

class ScrollExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desplazamiento con SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Varios widgets de texto
              Text(
                'Bienvenidos a Flutter',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Text(
                'ejemplo de desplazamiento usando SingleChildScrollView.',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'veremos una serie de imágenes y más texto para su funcionamiento.',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              // Imagen 1
              Image.network(
                'https://png.pngtree.com/png-vector/20200403/ourmid/pngtree-e-commerce-world-on-phone-png-image_2173970.jpg',
                height: 200,
                width: 200,
              ),
              SizedBox(height: 20),
              // Imagen 2
              Image.network(
                'https://png.pngtree.com/png-vector/20200403/ourmid/pngtree-e-commerce-world-on-phone-png-image_2173970.jpg',
                height: 200,
                width: 200,
              ),
              SizedBox(height: 20),
              // Imagen 3
              Image.network(
                'https://png.pngtree.com/png-vector/20200403/ourmid/pngtree-e-commerce-world-on-phone-png-image_2173970.jpg',
                height: 200,
                width: 200,
              ),
              SizedBox(height: 20),
              // Más widgets de texto
              Text(
                'Aqui podremos agregar mas contenido.',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                'Este widget es útil cuando el contenido es largo y no cabe en la pantalla.',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
