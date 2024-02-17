import 'package:flutter/material.dart';
import 'package:mindwell/routes/routes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Configuración'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ListTile(
                title: const Text('Perfil'),
                leading: const Icon(Icons.person),
                subtitle: const Text('Ver y editar perfil'),
                onTap: () {
                  Navigator.pushNamed(context, Routes.profile);
                },
              ),
              ListTile(
                title: const Text('Notificaciones'),
                leading: const Icon(Icons.notifications),
                subtitle: const Text('Configurar notificaciones'),
                onTap: () {
                  Navigator.pushNamed(context, Routes.notificationSettings);
                },
              ),
              ListTile(
                title: const Text('Idioma'),
                leading: const Icon(Icons.language),
                subtitle: const Text('Cambiar idioma'),
                onTap: () {
                  Navigator.pushNamed(context, Routes.languageSettings);
                },
              ),
              ListTile(
                title: const Text('Privacidad'),
                leading: const Icon(Icons.privacy_tip),
                subtitle: const Text('Configurar privacidad'),
                onTap: () {
                  Navigator.pushNamed(context, Routes.privacySettings);
                },
              ),
              ListTile(
                title: const Text('Ayuda'),
                leading: const Icon(Icons.help),
                subtitle: const Text('Centro de ayuda'),
                onTap: () {
                  Navigator.pushNamed(context, Routes.help);
                },
              ),
              const ListTile(
                title: Text('Cerrar sesión'),
                leading: Icon(Icons.logout),
              ),
            ],
          ),
        ));
  }
}
