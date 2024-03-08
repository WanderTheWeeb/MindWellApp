import 'package:flutter/material.dart';
import 'package:mindwell/widgets/gradient_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Iniciar sesión"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                GradientButton(
                  text: 'edoardo',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ));
  }
}
