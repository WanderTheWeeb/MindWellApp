import 'package:flutter/material.dart';

class PsicoAvalibleScreen extends StatelessWidget {
  const PsicoAvalibleScreen({super.key});

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
                  Text('Mejores Psicologos',
                      style: Theme.of(context).textTheme.titleLarge),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Ver todos'),
                  ),
                ],
              ),
              PsicoRow(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Psicologos Disponibles',
                      style: Theme.of(context).textTheme.titleLarge),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Ver todos'),
                  ),
                ],
              ),
              PsicoRow(),
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

class PsicoRow extends StatelessWidget {
  const PsicoRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      primary: false,
      child: Row(
        children: [
          _buildPsicoColumn(
              context,
              'https://imgs.search.brave.com/EM4HVokShFFx51XWUMimcKHd8rZkfS-xwUIFckIazXc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzk1Lzlh/Lzg5Lzk1OWE4OTRj/NTVjMmY4M2JhOWM3/OWFjNDMzZjFiN2Fj/LmpwZw',
              'Dr. Juan Perez',
              'Psicologo Clinico'),
          SizedBox(width: 16),
          _buildPsicoColumn(
              context,
              'https://imgs.search.brave.com/EM4HVokShFFx51XWUMimcKHd8rZkfS-xwUIFckIazXc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzk1Lzlh/Lzg5Lzk1OWE4OTRj/NTVjMmY4M2JhOWM3/OWFjNDMzZjFiN2Fj/LmpwZw',
              'Dra. Maria Lopez',
              'Psicologo Infantil'),
          SizedBox(width: 16),
          _buildPsicoColumn(
              context,
              'https://imgs.search.brave.com/EM4HVokShFFx51XWUMimcKHd8rZkfS-xwUIFckIazXc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzk1Lzlh/Lzg5Lzk1OWE4OTRj/NTVjMmY4M2JhOWM3/OWFjNDMzZjFiN2Fj/LmpwZw',
              'Dr. Carlos Ramirez',
              'Psicologo de Parejas'),
          SizedBox(width: 16),
          _buildPsicoColumn(
              context,
              'https://imgs.search.brave.com/EM4HVokShFFx51XWUMimcKHd8rZkfS-xwUIFckIazXc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzk1Lzlh/Lzg5Lzk1OWE4OTRj/NTVjMmY4M2JhOWM3/OWFjNDMzZjFiN2Fj/LmpwZw',
              'Dr. Carlos Ramirez',
              'Psicologo de Parejas'),
        ],
      ),
    );
  }

  Widget _buildPsicoColumn(BuildContext context, String imageUrl, String name,
      String specialization) {
    return Column(
      children: [
        Image(
          image: NetworkImage(imageUrl),
          width: 100,
        ),
        Text(name, style: Theme.of(context).textTheme.labelMedium),
        Text(specialization, style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }
}

class LostConnection extends StatelessWidget {
  const LostConnection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/lost.png'),
            width: 350,
          ),
          SizedBox(height: 20),
          OutlinedButton(onPressed: () {}, child: Text('Reintentar'))
        ],
      ),
    );
  }
}
