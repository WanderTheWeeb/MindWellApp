import 'package:flutter/material.dart';

class PsicoProfileScreen extends StatelessWidget {
  const PsicoProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Perfil'),
        ),
        body: SizedBox(
            width: double.infinity,
            child: Column(children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://imgs.search.brave.com/AG-8wPeZsqT_TOoBVNcNHR7sVO9r4kEZTW074WShF60/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lMDAt/ZWxtdW5kby51ZWNk/bi5lcy9hc3NldHMv/bXVsdGltZWRpYS9p/bWFnZW5lcy8yMDIy/LzA4LzMwLzE2NjE4/ODM1ODQ4MzE5Lmpw/Zw'),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Name:',
                  ),
                  Text('Dr. John Doe'),
                ],
              ),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Email:',
                    ),
                    Text('JohnDoe@gmail.com'),
                  ]),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Phone:',
                    ),
                    Text('123456789'),
                  ]),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Profesion:',
                    ),
                    Text('Psicologo'),
                  ]),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Especialidad:',
                    ),
                    Text('Depresion'),
                  ]),
            ])));
  }
}
