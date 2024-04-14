import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mindwell/routes/app_routes.dart';

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
                  context.push(Routes.profileSettings);
                },
              ),
              ListTile(
                title: const Text('Notificaciones'),
                leading: const Icon(Icons.notifications),
                subtitle: const Text('Configurar notificaciones'),
                onTap: () {
                  context.push(Routes.notificationSettings);
                },
              ),
              ListTile(
                title: const Text('Idioma'),
                leading: const Icon(Icons.language),
                subtitle: const Text('Cambiar idioma'),
                onTap: () {
                  context.push(Routes.languageSettings);
                },
              ),
              ListTile(
                title: const Text('Privacidad'),
                leading: const Icon(Icons.privacy_tip),
                subtitle: const Text('Configurar privacidad'),
                onTap: () {
                  context.push(Routes.privacySettings);
                },
              ),
              ListTile(
                title: const Text('Ayuda'),
                leading: const Icon(Icons.help),
                subtitle: const Text('Centro de ayuda'),
                onTap: () {
                  context.push(Routes.helpSettings);
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
