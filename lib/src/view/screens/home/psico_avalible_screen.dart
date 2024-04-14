import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mindwell/routes/app_routes.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Filtrar por distancia',
                      style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Chip(
                        label: Text('Todos'),
                        backgroundColor:
                            Theme.of(context).colorScheme.secondaryContainer),
                    SizedBox(width: 8),
                    Chip(
                        label: Text('5km'),
                        backgroundColor:
                            Theme.of(context).colorScheme.secondaryContainer),
                    SizedBox(width: 8),
                    Chip(
                        label: Text('10km'),
                        backgroundColor:
                            Theme.of(context).colorScheme.secondaryContainer),
                    SizedBox(width: 8),
                    Chip(
                        label: Text('15km'),
                        backgroundColor:
                            Theme.of(context).colorScheme.secondaryContainer),
                    SizedBox(width: 8),
                    Chip(
                        label: Text('20km'),
                        backgroundColor:
                            Theme.of(context).colorScheme.secondaryContainer),
                  ],
                ),
              ),
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
            'https://carlaotero.es/wp-content/uploads/2021/10/anapolitan1-scaled.jpg',
            'Dr. Juan Perez',
            'Psicologo Clinico',
            () => context.push(Routes.chat),
          ),
          SizedBox(width: 16),
          _buildPsicoColumn(
              context,
              'https://paulafotografia.com/wp-content/uploads/2021/11/DSC_2096_PF.jpg',
              'Dra. Maria Lopez',
              'Psicologo Infantil',
              () {}),
          SizedBox(width: 16),
          _buildPsicoColumn(
              context,
              'https://b2472105.smushcdn.com/2472105/wp-content/uploads/2022/11/10-Poses-para-foto-de-Perfil-Profesional-Mujer-04-2022-1-819x1024.jpg?lossy=1&strip=1&webp=1',
              'Dr. Carlos Ramirez',
              'Psicologo de Parejas',
              () {}),
          SizedBox(width: 16),
          _buildPsicoColumn(
              context,
              'https://i.pinimg.com/originals/94/55/72/94557248162d6bb98fcbe1af70f00a12.png',
              'Dr. Carlos Ramirez',
              'Psicologo de Parejas',
              () {}),
        ],
      ),
    );
  }

  Widget _buildPsicoColumn(BuildContext context, String imageUrl, String name,
      String specialization, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image(
            image: NetworkImage(imageUrl),
            width: 100,
            height: 120,
          ),
          Text(name, style: Theme.of(context).textTheme.labelMedium),
          Text(specialization, style: Theme.of(context).textTheme.labelSmall),
        ],
      ),
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
