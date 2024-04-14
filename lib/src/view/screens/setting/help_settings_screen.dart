import 'package:flutter/material.dart';

class HelpSettingsScreen extends StatelessWidget {
  const HelpSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración de ayuda'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Centro de ayuda'),
            leading: Icon(Icons.help),
          ),
          ListTile(
            title: Text('Contacto de soporte'),
            leading: Icon(Icons.contact_support),
          ),
          ListTile(
            title: Text('Actualizaciones y novedades'),
            leading: Icon(Icons.new_releases),
          ),
          ListTile(
            title: Text('Política de privacidad y términos de uso'),
            leading: Icon(Icons.privacy_tip),
          ),
        ],
      ),
    );
  }
}
