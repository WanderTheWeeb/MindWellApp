import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mindwell/main.dart';
import 'package:mindwell/routes/app_routes.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

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
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Correo Electrónico',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                  ),
                  obscureText: true, // Para ocultar la contraseña
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      final email = _emailController.text.trim();
                      await supabase.auth.signInWithPassword(
                        email: email,
                        password: _passwordController.text,
                      );
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'Revisa tu correo para verificar tu cuenta'),
                          ),
                        );
                      }
                    } on AuthException catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(e.message),
                          backgroundColor: Theme.of(context).colorScheme.error,
                        ),
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Error al iniciar sesión'),
                          backgroundColor: Theme.of(context).colorScheme.error,
                        ),
                      );
                    }
                  },
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
                    context.push(Routes.register);
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
