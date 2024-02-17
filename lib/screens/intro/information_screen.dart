import 'package:flutter/material.dart';

import 'aclaration_screen.dart';
import 'bienvenida_screen.dart';
import 'terms_condition_screen.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Acerca de MindWell'),
              bottom: const TabBar(
                tabs: [
                  Tab(text: 'Terminos y condiciones'),
                  Tab(text: 'Aclaraciones'),
                  Tab(text: 'Bienvenido'),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                TerminosCondicionesBody(),
                AclaracionesBody(),
                Bienvenida()
              ],
            )),
      ),
    );
  }
}
