import 'package:flutter/material.dart';

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
            'https://imgs.search.brave.com/EM4HVokShFFx51XWUMimcKHd8rZkfS-xwUIFckIazXc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzk1Lzlh/Lzg5Lzk1OWE4OTRj/NTVjMmY4M2JhOWM3/OWFjNDMzZjFiN2Fj/LmpwZw',
            'Consultorio Dr. Juan Perez',
            'Psicologo Clinico',
            () {},
          ),
          SizedBox(width: 16),
          _buildInstitutionColumn(
              context,
              'https://imgs.search.brave.com/EM4HVokShFFx51XWUMimcKHd8rZkfS-xwUIFckIazXc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzk1Lzlh/Lzg5Lzk1OWE4OTRj/NTVjMmY4M2JhOWM3/OWFjNDMzZjFiN2Fj/LmpwZw',
              'Consultorio Dra. Maria Lopez',
              'Psicologo Infantil',
              () {}),
          SizedBox(width: 16),
          _buildInstitutionColumn(
              context,
              'https://imgs.search.brave.com/EM4HVokShFFx51XWUMimcKHd8rZkfS-xwUIFckIazXc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzk1Lzlh/Lzg5Lzk1OWE4OTRj/NTVjMmY4M2JhOWM3/OWFjNDMzZjFiN2Fj/LmpwZw',
              'Consultorio Dr. Carlos Ramirez',
              'Psicologo de Parejas',
              () {}),
          SizedBox(width: 16),
          _buildInstitutionColumn(
              context,
              'https://imgs.search.brave.com/EM4HVokShFFx51XWUMimcKHd8rZkfS-xwUIFckIazXc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzk1Lzlh/Lzg5Lzk1OWE4OTRj/NTVjMmY4M2JhOWM3/OWFjNDMzZjFiN2Fj/LmpwZw',
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
