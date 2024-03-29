import 'package:flutter/material.dart';

import '../../widgets/text_section.dart';

class TerminosCondiciones extends StatelessWidget {
  const TerminosCondiciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text('Términos y Condiciones de Uso')),
      ),
      body: const TerminosCondicionesBody(),
    );
  }
}

class TerminosCondicionesBody extends StatelessWidget {
  const TerminosCondicionesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          textSectionV1('1. Confidencialidad y Privacidad:',
              'Respetamos tu privacidad y la confidencialidad de tus datos. Toda la información compartida con nuestros profesionales de salud mental se manejará de manera confidencial, de acuerdo con las leyes y regulaciones aplicables.'),
          textSectionV1('2. Uso Responsable:',
              'La aplicación MindWell es una plataforma destinada al apoyo de la salud mental. Esperamos que todos los usuarios se comporten de manera respetuosa y ética al interactuar con los profesionales y otros usuarios.'),
          textSectionV1('3. Contenido y Recursos:',
              'El contenido proporcionado en la aplicación MindWell tiene fines informativos y de apoyo. No debe sustituir el consejo o el tratamiento médico profesional. Consulta a un profesional de salud mental calificado para tus necesidades específicas.'),
          textSectionV1('4. Seguridad:',
              'Mantén tus credenciales de inicio de sesión seguras y no compartas tu cuenta. MindWell no solicitará información personal sensible, como contraseñas, a través de la aplicación. Reporta cualquier actividad sospechosa de inmediato.'),
          textSectionV1('5. Atención de Crisis:',
              'Si estás experimentando una emergencia o crisis mental, te instamos a buscar ayuda de inmediato a través de recursos locales de emergencia o de atención médica. MindWell no es un servicio de atención de crisis.'),
          textSectionV1('6. Actualizaciones y Cambios:',
              'Nos reservamos el derecho de realizar cambios en la aplicación y en estos términos y condiciones en cualquier momento. Te informaremos sobre las actualizaciones importantes.'),
          textSectionV1('7. Responsabilidad:',
              'MindWell no se hace responsable por las decisiones tomadas por los usuarios basadas en la información proporcionada en la aplicación. El uso de MindWell es responsabilidad del usuario.'),
          textSectionV1('8. Contacto:',
              'Si tienes preguntas, inquietudes o comentarios sobre nuestra aplicación o nuestros términos y condiciones, no dudes en contactarnos a través de nuestra sección de soporte.')
        ],
      ),
    );
  }
}
