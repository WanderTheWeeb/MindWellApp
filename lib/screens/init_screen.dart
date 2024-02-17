import 'package:flutter/material.dart';
import 'package:mindwell/routes/routes.dart';
import 'package:mindwell/utils/theme.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MindWell'),
          actions: [
            PopupMenuButton<String>(
              itemBuilder: (context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: Routes.settings,
                  child:
                      Text('Configuración'), // Asignar valor para la navegación
                ),
                PopupMenuItem<String>(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Cerrar sesión'),
                      Icon(Icons.logout, color: lightColorScheme.primary),
                    ],
                  ), // Asignar valor para la navegación
                ),
              ],
              onSelected: (value) {
                // Navegar a la ruta correspondiente
                Navigator.pushNamed(context, value);
              },
              offset:
                  const Offset(0, 40), // Posicionar el menú debajo del icono
            )
          ],
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              // ...
            ],
          ),
        ));
  }
}
