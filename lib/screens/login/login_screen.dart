import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iniciar sesión"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Correo Electrónico',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                  ),
                  obscureText: true, // Para ocultar la contraseña
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Iniciar Sesión'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
                    backgroundColor: const Color.fromRGBO(
                        255, 255, 255, 1.0), // Color del texto
                  ),
                  onPressed: () {
                    // Aquí puedes agregar la lógica para iniciar sesión con Google
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Centra los elementos horizontalmente
                    mainAxisSize: MainAxisSize
                        .min, // Permite que el botón se adapte al contenido
                    children: [
                      Image.asset('assets/images/key.png', scale: 25),
                      const SizedBox(width: 8),
                      const Text('Iniciar Sesión con cuenta de organización'),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: const Text('¿No tienes una cuenta? Regístrate'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
