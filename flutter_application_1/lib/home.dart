import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
// Función para generar las tarjetas de la cuadrícula
  List<Card> _buildGridCards(BuildContext context) {
    // Por ahora haremos 10 tarjetas de prueba
    return List.generate(10, (int index) {
      return Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset(
                'assets/images/diamond.png', // Logo temporal mientras bajamos las fotos
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('Título del producto'),
                  SizedBox(height: 8.0),
                  Text('L. 150.00'),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra superior con botón de menú, título y buscador
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print('Menu button');
          },
        ),
        title: const Text('SHRINE'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(Icons.tune),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),
      // Aquí irá la cuadrícula de productos (GridView)
      body: GridView.count(
        crossAxisCount: 2, // Esto pone dos columnas
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0, // Controla el tamaño de las tarjetas
        children: _buildGridCards(context), // Llama a la función de arriba
      ),
    );
  }
}