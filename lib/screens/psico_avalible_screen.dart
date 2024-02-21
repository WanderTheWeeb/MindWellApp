import 'package:flutter/material.dart';
import 'package:mindwell/routes/routes.dart';
import 'package:mindwell/widgets/psico_card.dart';

import '../utils/strings_name.dart';

class PsicoAvalibleScreen extends StatelessWidget {
  const PsicoAvalibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringsName.psicoAvalible),
      ),
      body: SafeArea(
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          padding: const EdgeInsets.all(15),
          children: [
            PsicoCard(
              name: 'Javier Pino',
              pathImage:
                  'https://cdn.domestika.org/c_limit,dpr_auto,f_auto,q_auto,w_820/v1576497340/content-items/003/518/329/_MG_5442-original.jpg?1576497340',
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.psicoProfile);
              },
            ),
            PsicoCard(
              name: 'Liliana',
              pathImage:
                  'https://th.bing.com/th/id/OIP.ATP8XIchpWYEF2CDoAi7owHaHb?pid=ImgDet&w=474&h=475&rs=1',
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.psicoProfile);
              },
            ),
            PsicoCard(
              name: 'David Oseguera',
              pathImage:
                  'https://th.bing.com/th/id/OIP.2cOe4ej-roywKGJXcvQQUQHaF7?rs=1&pid=ImgDetMain',
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.psicoProfile);
              },
            ),
            PsicoCard(
              name: 'Ana de Armas',
              pathImage:
                  'https://th.bing.com/th/id/OIP.d3K30F0kyTn81AoF3WCRzwHaE8?rs=1&pid=ImgDetMain',
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.psicoProfile);
              },
            ),
            PsicoCard(
              name: 'Maxine Bay',
              pathImage:
                  'https://th.bing.com/th/id/OIP.kC-wGXKn1iwD1r8jxbFtrgHaF7?rs=1&pid=ImgDetMain',
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.psicoProfile);
              },
            ),
            PsicoCard(
              name: 'Omar Banos',
              pathImage:
                  'https://csmr.umich.edu/media/people/sagar_kumar_u29m0lJ.jpg',
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.psicoProfile);
              },
            ),
            PsicoCard(
              name: 'Courtney Barnett',
              pathImage:
                  'https://cdn.domestika.org/c_fill,dpr_1.0,f_auto,h_1200,pg_1,t_base_params,w_1200/v1584056836/project-covers/000/567/180/567180-original.jpg?1584056836',
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.psicoProfile);
              },
            ),
            PsicoCard(
              name: 'Aurora Asknes',
              pathImage:
                  'https://e-cdn-images.dzcdn.net/images/cover/023c9246ea97eeec4d34d82f633ade3a/500x500-000000-80-0-0.jpg',
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.psicoProfile);
              },
            ),
            PsicoCard(
              name: 'Jaime Mausán',
              pathImage:
                  'https://th.bing.com/th/id/OIP.KaqI4wYhCyxgfi3NO2V0NAHaLH?rs=1&pid=ImgDetMain',
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.psicoProfile);
              },
            ),
          ],
        ),
      ),
    );
  }
}
