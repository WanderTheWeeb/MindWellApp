import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrincipalScreen extends StatelessWidget {
  const PrincipalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvendio a MindWell'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Actividades de la semana',
                      style: Theme.of(context).textTheme.titleLarge),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('Test de la semana',
                            style: Theme.of(context).textTheme.titleMedium),
                        SizedBox(height: 15),
                        OutlinedButton(
                            onPressed: () {}, child: Text('Comenzar')),
                      ],
                    ),
                    _buildConsejoCard(
                        context,
                        'https://cdn-icons-png.flaticon.com/512/3350/3350891.png',
                        'Consejo'),
                    SizedBox(width: 20),
                    _buildConsejoCard(
                        context,
                        'https://cdn-icons-png.flaticon.com/512/4357/4357499.png',
                        'Consejo'),
                    SizedBox(width: 20),
                    _buildConsejoCard(
                        context,
                        'https://cdn-icons-png.freepik.com/512/4072/4072217.png',
                        'Consejo'),
                    SizedBox(width: 10),
                    _buildConsejoCard(
                        context,
                        'https://cdn-icons-png.flaticon.com/512/3350/3350891.png',
                        'Consejo'),
                    SizedBox(width: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildConsejoCard(
    BuildContext context, String imageUrl, String consejo) {
  return Column(
    children: [
      Image(height: 120, image: NetworkImage(imageUrl)),
      SizedBox(height: 10),
      Text(
        consejo,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      Text(
        'Lorem ipsum dolor',
        style: Theme.of(context).textTheme.labelSmall,
      ),
    ],
  );
}
