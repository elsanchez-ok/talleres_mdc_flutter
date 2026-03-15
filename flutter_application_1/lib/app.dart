import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrine',
      // Esta es la pantalla que se verá primero al abrir la app
      initialRoute: '/login', 
      // Aquí defines el mapa de las rutas
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/': (BuildContext context) => const HomePage(),
      },
      // Este tema se personalizará más adelante en el MDC-103
      theme: ThemeData.light(useMaterial3: true),
    );
  }
}