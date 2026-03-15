import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                FlutterLogo(size: 100), // Aquí irá el logo luego
                SizedBox(height: 16.0),
                Text('SHRINE'),
              ],
            ),
            SizedBox(height: 120.0),
            // Campo de Usuario
TextField(
  decoration: const InputDecoration(
    filled: true,
    labelText: 'Username',
  ),
),
// Espacio entre campos
const SizedBox(height: 12.0),
// Campo de Contraseña
TextField(
  decoration: const InputDecoration(
    filled: true,
    labelText: 'Password',
  ),
  obscureText: true, // Esto oculta los caracteres (puntos)
),

            // TODO: Añadir TextField para Password (Paso 3 del codelab)
            const SizedBox(height: 12.0),
OverflowBar(
  alignment: MainAxisAlignment.end,
  children: <Widget>[
    TextButton(
      child: const Text('CANCEL'),
      onPressed: () {
        // Al presionar, se limpian los campos
      },
    ),
    ElevatedButton(
      child: const Text('NEXT'),
      onPressed: () {
        // Al presionar, navegamos a la siguiente pantalla (MDC-102)
        Navigator.pop(context);
      },
    ),
  ],
),
          ],
        ),
      ),
    );
  }
}