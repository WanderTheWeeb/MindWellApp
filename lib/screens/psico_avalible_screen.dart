import 'package:flutter/material.dart';
import 'package:mindwell/routes/routes.dart';
import 'package:mindwell/widgets/psico_card.dart';

class PsicoAvalibleScreen extends StatelessWidget {
  const PsicoAvalibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Psicologos Disponibles'),
      ),
      body: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(15),
        children: [
          PsicoCard(
            name: 'Mi mamá',
            pathImage:
                'https://i.pinimg.com/originals/02/4a/76/024a76ee7c877513afab3d5540740a6e.jpg',
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.psicoProfile);
            },
          ),
          PsicoCard(
            name: 'John Doe',
            pathImage:
                'https://imgs.search.brave.com/AG-8wPeZsqT_TOoBVNcNHR7sVO9r4kEZTW074WShF60/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lMDAt/ZWxtdW5kby51ZWNk/bi5lcy9hc3NldHMv/bXVsdGltZWRpYS9p/bWFnZW5lcy8yMDIy/LzA4LzMwLzE2NjE4/ODM1ODQ4MzE5Lmpw/Zw',
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.psicoProfile);
            },
          ),
          PsicoCard(
            name: 'Jane Doe',
            pathImage:
                'https://imgs.search.brave.com/AG-8wPeZsqT_TOoBVNcNHR7sVO9r4kEZTW074WShF60/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lMDAt/ZWxtdW5kby51ZWNk/bi5lcy9hc3NldHMv/bXVsdGltZWRpYS9p/bWFnZW5lcy8yMDIy/LzA4LzMwLzE2NjE4/ODM1ODQ4MzE5Lmpw/Zw',
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.psicoProfile);
            },
          ),
          PsicoCard(
            name: 'Ana de Armas',
            pathImage:
                'https://imgs.search.brave.com/AG-8wPeZsqT_TOoBVNcNHR7sVO9r4kEZTW074WShF60/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lMDAt/ZWxtdW5kby51ZWNk/bi5lcy9hc3NldHMv/bXVsdGltZWRpYS9p/bWFnZW5lcy8yMDIy/LzA4LzMwLzE2NjE4/ODM1ODQ4MzE5Lmpw/Zw',
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.psicoProfile);
            },
          ),
          PsicoCard(
            name: 'John Doe',
            pathImage:
                'https://imgs.search.brave.com/AG-8wPeZsqT_TOoBVNcNHR7sVO9r4kEZTW074WShF60/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lMDAt/ZWxtdW5kby51ZWNk/bi5lcy9hc3NldHMv/bXVsdGltZWRpYS9p/bWFnZW5lcy8yMDIy/LzA4LzMwLzE2NjE4/ODM1ODQ4MzE5Lmpw/Zw',
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.psicoProfile);
            },
          ),
          PsicoCard(
            name: 'Jane Doe',
            pathImage:
                'https://imgs.search.brave.com/AG-8wPeZsqT_TOoBVNcNHR7sVO9r4kEZTW074WShF60/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lMDAt/ZWxtdW5kby51ZWNk/bi5lcy9hc3NldHMv/bXVsdGltZWRpYS9p/bWFnZW5lcy8yMDIy/LzA4LzMwLzE2NjE4/ODM1ODQ4MzE5Lmpw/Zw',
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.psicoProfile);
            },
          ),
          PsicoCard(
            name: 'Ana de Armas',
            pathImage:
                'https://imgs.search.brave.com/AG-8wPeZsqT_TOoBVNcNHR7sVO9r4kEZTW074WShF60/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lMDAt/ZWxtdW5kby51ZWNk/bi5lcy9hc3NldHMv/bXVsdGltZWRpYS9p/bWFnZW5lcy8yMDIy/LzA4LzMwLzE2NjE4/ODM1ODQ4MzE5Lmpw/Zw',
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.psicoProfile);
            },
          ),
          PsicoCard(
            name: 'John Doe',
            pathImage:
                'https://imgs.search.brave.com/AG-8wPeZsqT_TOoBVNcNHR7sVO9r4kEZTW074WShF60/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lMDAt/ZWxtdW5kby51ZWNk/bi5lcy9hc3NldHMv/bXVsdGltZWRpYS9p/bWFnZW5lcy8yMDIy/LzA4LzMwLzE2NjE4/ODM1ODQ4MzE5Lmpw/Zw',
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.psicoProfile);
            },
          ),
          PsicoCard(
            name: 'Jane Doe',
            pathImage:
                'https://imgs.search.brave.com/AG-8wPeZsqT_TOoBVNcNHR7sVO9r4kEZTW074WShF60/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lMDAt/ZWxtdW5kby51ZWNk/bi5lcy9hc3NldHMv/bXVsdGltZWRpYS9p/bWFnZW5lcy8yMDIy/LzA4LzMwLzE2NjE4/ODM1ODQ4MzE5Lmpw/Zw',
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.psicoProfile);
            },
          ),
        ],
      ),
    );
  }
}
