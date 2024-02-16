import 'package:flutter/material.dart';
import 'package:mindwell/routes/routes.dart';
import 'package:mindwell/widgets/button_banner.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MindWell'),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => <PopupMenuEntry>[
                const PopupMenuItem(
                  value: 'home',
                  child: Text('Inicio'),
                ),
                const PopupMenuItem(
                  value: 'about',
                  child: Text('Acerca de'),
                ),
                PopupMenuItem(
                  value: 'contact',
                  child: Text('Contacto'),
                ),
              ],
              onSelected: (value) {
                // Navegar a otra pantalla
                Navigator.pushNamed(context, value);
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageButton(
                margin: const EdgeInsets.all(20),
                borderRadius: BorderRadius.circular(10),
                imagePath:
                    'https://imgs.search.brave.com/vMWJriFuJ7muG5_KaGHFhYCniZq_Om3TrNYzFKHlk3k/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTMw/NTE5NDg1MC9waG90/by93b21hbi1wcmFj/dGljaW5nLXlvZ2Et/YXQtaG9tZS5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9anFK/Wmx6NXlnY1o2LS1s/cVNZdVBvMk1XSWxS/cmtRa3pINmtzUjJi/WnFTcz0',
                onPressed: () {
                  //Navigator.of(context).pushNamed(Routes.meditation);
                },
                buttonText: 'Hora de yoga',
              ),
            ],
          ),
        ));
  }
}
