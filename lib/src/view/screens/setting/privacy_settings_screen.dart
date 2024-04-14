import 'package:flutter/material.dart';

class PrivacySettingsScreen extends StatelessWidget {
  const PrivacySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración de privacidad'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Control de cookies y seguimiento'),
            value: true,
            secondary: const Icon(Icons.cookie),
            onChanged: (value) {},
          ),
          SwitchListTile(
            title: const Text('Notificaciones de privacidad'),
            value: false,
            secondary: const Icon(Icons.notifications_active),
            onChanged: (value) {},
          ),
          const ListTile(
            title: Text('Seguridad de la cuenta'),
            leading: Icon(Icons.security),
          ),
          SwitchListTile(
            title: const Text('Compartir datos con terceros'),
            value: true,
            secondary: const Icon(Icons.share),
            onChanged: (value) {},
          ),
          const ListTile(
            title: Text('Eliminar cuenta'),
            leading: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
