import 'package:flutter/material.dart';
import 'inicio.dart'; // Importa el archivo de inicio.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Desactiva el banner de debug
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const LoginScreen(), // Cambiado de SplashScreen a LoginScreen
    );
  }
}

// Eliminada la clase SplashScreen y su implementación

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar sesión'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Bienvenido a MechMake!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla de inicio
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const InicioScreen()));
              },
              child: Text('Iniciar sesión'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Aquí iría la lógica para recuperar contraseña
              },
              child: Text('¿Olvidaste tu contraseña?'),
            ),
            SizedBox(height: 20),
            Text('O inicia sesión con:'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Aquí iría la lógica para iniciar sesión con Facebook
                  },
                  icon: Icon(Icons.facebook),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('¿No tienes una cuenta?'),
                TextButton(
                  onPressed: () {
                    // Aquí iría la lógica para ir a la pantalla de registro
                  },
                  child: Text('Crear cuenta'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
