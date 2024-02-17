import 'package:flutter/material.dart';
import 'package:mindwell/routes/routes.dart';

class AppBarAction extends StatelessWidget {
  const AppBarAction({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (context) => const <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: Routes.settings,
          child: Text('Configuración'),
        ),
        PopupMenuItem<String>(
          value: Routes.login,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Iniciar sesión'),
            ],
          ),
        ),
      ],
      onSelected: (value) {
        Navigator.pushNamed(context, value);
      },
      offset: const Offset(0, 40),
    );
  }
}
