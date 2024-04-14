import 'package:flutter/material.dart';

class NotificacionSettingsScreen extends StatelessWidget {
  const NotificacionSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración de notificaciones'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Notificaciones push'),
            value: true,
            secondary: const Icon(Icons.notifications),
            onChanged: (value) {},
          ),
          SwitchListTile(
            title: const Text('Notificaciones por correo electrónico'),
            value: false,
            secondary: const Icon(Icons.email),
            onChanged: (value) {},
          ),
          SwitchListTile(
            title: const Text('Notificaciones emergentes'),
            value: true,
            secondary: const Icon(Icons.message),
            onChanged: (value) {},
          ),
          ListTile(
            title: const Text('Frecuencia de notificaciones'),
            subtitle: const Text('Diaria'),
            leading: const Icon(Icons.access_time),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Sonido de notificaciones'),
            subtitle: const Text('Predeterminado'),
            leading: const Icon(Icons.volume_up),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
