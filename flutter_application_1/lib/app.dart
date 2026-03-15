import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'backdrop.dart'; // El archivo que creamos antes
import 'models/product.dart'; // Para las categorías

class ShrineApp extends StatelessWidget {
  const ShrineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
// En lib/app.dart (dentro de routes)
'/': (BuildContext context) => Backdrop(
      currentCategory: Category.all,
      frontLayer: const HomePage(),
      backLayer: Container(color: kShrinePink100), 
      frontTitle: const Text('SHRINE'), // Título cuando está cerrado
      backTitle: const Text('MENU'),   // Título cuando está abierto
    ),
      },
      // 1. Aplicamos el nuevo tema aquí
      theme: _kShrineTheme, 
    );
  }
}

// 2. Definimos el tema fuera de la clase
final ThemeData _kShrineTheme = _buildShrineTheme();



ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrinePink100,
      onPrimary: kShrineBrown900,
      secondary: kShrinePink50,
      error: kShrineErrorRed,
    ),
    // 👇 ESTA ES LA LÍNEA QUE TE FALTA CONECTAR:
    textTheme: _buildShrineTextTheme(base.textTheme), 
  );
}

// 4. Definimos los colores constantes (Colores de la marca Shrine)
const kShrinePink50 = Color(0xFFFEEAE6);
const kShrinePink100 = Color(0xFFFEDBD0);
const kShrinePink300 = Color(0xFFFBB8AC);
const kShrinePink400 = Color(0xFFEAA4A4);
const kShrineBrown900 = Color(0xFF442B2D);
const kShrineErrorRed = Color(0xFFC5032B);
const kShrineSurfaceWhite = Color(0xFFFFFBFA);
const kShrineBackgroundWhite = Colors.white;

// 5. Función para la tipografía
TextTheme _buildShrineTextTheme(TextTheme base) {
  return base.copyWith(
    headlineSmall: base.headlineSmall!.copyWith(
      fontWeight: FontWeight.w500,
    ),
    titleLarge: base.titleLarge!.copyWith(
      fontSize: 18.0,
    ),
    bodySmall: base.bodySmall!.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    bodyLarge: base.bodyLarge!.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
  ).apply(
    displayColor: kShrineBrown900,
    bodyColor: kShrineBrown900,
  );
}