import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class InstitutionScreen extends StatelessWidget {
  const InstitutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Psicologos Disponibles'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mejores Consultorios cerca tu zona',
                      style: Theme.of(context).textTheme.titleLarge),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Ver todos'),
                  ),
                ],
              ),
              InstitutionRow(),
              SizedBox(height: 20),
              ListBody(
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Dr. Juan Perez'),
                    subtitle: Text('Psicologo Clinico'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contactar'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Dra. Maria Lopez'),
                    subtitle: Text('Psicologo Infantil'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contactar'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Dr. Carlos Ramirez'),
                    subtitle: Text('Psicologo de Parejas'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contactar'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Dr. Carlos Ramirez'),
                    subtitle: Text('Psicologo de Parejas'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contactar'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Dr. Carlos Ramirez'),
                    subtitle: Text('Psicologo de Parejas'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contactar'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Dr. Carlos Ramirez'),
                    subtitle: Text('Psicologo de Parejas'),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contactar'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InstitutionRow extends StatelessWidget {
  const InstitutionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      primary: false,
      child: Row(
        children: [
          _buildInstitutionColumn(
            context,
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaNp5_JutlwsPhJA4td9Nvr2DT5qqySDEhGA&usqp=CAU',
            'Consultorio Dr. Juan Perez',
            'Psicologo Clinico',
            () {
              Navigator.of(context).pushNamed(Routes.institutionProfile);
            },
          ),
          SizedBox(width: 16),
          _buildInstitutionColumn(
              context,
              'https://simisae.com.mx/assets/images/logo-simisae.png',
              'Consultorio Dra. Maria Lopez',
              'Psicologo Infantil',
              () {}),
          SizedBox(width: 16),
          _buildInstitutionColumn(
              context,
              'https://ayuda-psicologica-en-linea.com/wp-content/uploads/2019/12/Movil_Acerca-de.png',
              'Consultorio Dr. Carlos Ramirez',
              'Psicologo de Parejas',
              () {}),
          SizedBox(width: 16),
          _buildInstitutionColumn(
              context,
              'https://difzapopan.gob.mx/wp-content/uploads/2020/09/ENTRADA-CAP.jpg',
              'Centro de Psicologia',
              'Psicologo Clinico',
              () {}),
        ],
      ),
    );
  }

  Widget _buildInstitutionColumn(BuildContext context, String imageUrl,
      String name, String specialization, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image(
            image: NetworkImage(imageUrl),
            width: 100,
          ),
          Text(name, style: Theme.of(context).textTheme.labelMedium),
          Text(specialization, style: Theme.of(context).textTheme.labelSmall),
        ],
      ),
    );
  }
}
