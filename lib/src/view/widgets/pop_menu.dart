import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarAction extends StatelessWidget {
  const AppBarAction({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (context) => const <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: '/settings',
          child: Text('Configuración'),
        ),
        PopupMenuItem<String>(
          value: '/login',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Iniciar sesión'),
            ],
          ),
        ),
      ],
      onSelected: (value) {
        context.push(value);
      },
      offset: const Offset(0, 40),
    );
  }
}
