import 'package:flutter/material.dart';

import '../../widgets/text_section.dart';

class Aclaraciones extends StatelessWidget {
  const Aclaraciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(child: Text('Aclaraciones')),
        ),
        body: const AclaracionesBody());
  }
}

class AclaracionesBody extends StatelessWidget {
  const AclaracionesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [
          textSectionV1('1. Complemento, no Sustituto:',
              'MindWell se concibe como una herramienta de apoyo y orientación en tu búsqueda de bienestar mental. No debe considerarse como un reemplazo de la atención de un profesional de salud mental con licencia. Los profesionales de salud mental cuentan con la formación y experiencia necesaria para abordar de manera integral tus necesidades emocionales y mentales.'),
          textSectionV1('2. Consulta a un Profesional de Salud Mental:',
              'Si estás lidiando con problemas graves de salud mental, un diagnóstico, un tratamiento específico o una crisis, te recomendamos encarecidamente que busques la ayuda de un profesional de salud mental con licencia. Estos expertos están capacitados para proporcionar diagnósticos precisos y desarrollar planes de tratamiento personalizados.'),
          textSectionV1('3. Evaluación Profesional:',
              'Los profesionales de salud mental pueden llevar a cabo una evaluación completa de tu situación y proporcionarte intervenciones basadas en evidencia. Esto garantiza que recibas el tratamiento adecuado y una atención personalizada que se ajuste a tus necesidades.'),
          textSectionV1('4. Comunicación Abierta:',
              'Si decides utilizar MindWell en conjunción con la atención de un profesional de salud mental, asegúrate de mantener una comunicación abierta y honesta con tu terapeuta o médico. Compartir tu experiencia con la aplicación puede ayudar a tu profesional a brindarte un apoyo más efectivo.'),
        ]));
  }
}
