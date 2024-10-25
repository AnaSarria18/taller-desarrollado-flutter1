import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio Flutter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // elementos
        children: [
          // TextField con InputDecoration
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),  // Icono al inicio del TextField
                hintText: 'Buscar Producto',     // Texto sugerido dentro del TextField
                border: OutlineInputBorder(),    // Borde de caja alrededor del TextField
              ),
            ),
          ),

          // Imagen con propiedades de height, width y fit
          Image.network(
            'https://png.pngtree.com/png-vector/20200403/ourmid/pngtree-e-commerce-world-on-phone-png-image_2173970.jpg',
            height: 200,       // Altura de la imagen
            width: 200,        // Ancho de la imagen
            fit: BoxFit.cover, // ajustada imagen  dentro del contenedor
          ),

          // Texto estilizado con TextStyle
          Text(
            'Texto Decoracion',
            style: TextStyle(
              fontSize: 30,             // Tamaño de fuente
              fontWeight: FontWeight.bold, // Peso de la fuente
              color: Color.fromARGB(255, 80, 247, 136),        // Color de texto
            ),
          ),
        ],
      ),
    );
  }
}
