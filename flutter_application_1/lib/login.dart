import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

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
          children: const <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                FlutterLogo(size: 100), // Aquí irá el logo luego
                SizedBox(height: 16.0),
                Text('SHRINE'),
              ],
            ),
            SizedBox(height: 120.0),
            // TODO: Añadir TextField para Username (Paso 3 del codelab)
            // TODO: Añadir TextField para Password (Paso 3 del codelab)
            // TODO: Añadir botones (Paso 4 del codelab)
          ],
        ),
      ),
    );
  }
}