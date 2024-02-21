import 'package:flutter/material.dart';

class InstitutionProfileScreen extends StatelessWidget {
  const InstitutionProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Institución',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Nombre: '),
              Text('Cendiuh'),
            ],
          ),
        ]),
      ),
    );
  }
}
