import 'package:flutter/material.dart';
import 'package:mindwell/widgets/institution_card.dart';

import '../../routes/routes.dart';

class InstitutionScreen extends StatelessWidget {
  const InstitutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(15),
        children: [
          InstitutionCard(
              onPressed: () {
                Navigator.pushNamed(context, Routes.institutionProfile);
              },
              name: 'Cendiuh',
              pathImage:
                  'https://www.uv.mx/coatza/usbi/files/2020/11/cabeza-olmeca-usbi.jpg'),
          InstitutionCard(
            onPressed: () {},
            name: 'Psicólogo-Psicoterapeuta Marío Alberto Gómez Cuervo',
            pathImage:
                'https://lh5.googleusercontent.com/p/AF1QipP0sFs5KmGo8ffdD050_mVf7lbULwBYbYngOCfp=w426-h240-k-no',
          )
        ],
      ),
    ));
  }
}
