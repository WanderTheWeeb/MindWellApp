import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mindwell/utils/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Perfil',
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  const CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                        'https://imgs.search.brave.com/AG-8wPeZsqT_TOoBVNcNHR7sVO9r4kEZTW074WShF60/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9lMDAt/ZWxtdW5kby51ZWNk/bi5lcy9hc3NldHMv/bXVsdGltZWRpYS9p/bWFnZW5lcy8yMDIy/LzA4LzMwLzE2NjE4/ODM1ODQ4MzE5Lmpw/Zw'),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: lightColorScheme.primary,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon:
                            Icon(Icons.edit, color: lightColorScheme.onPrimary),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Ana de Armas',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Fecha de nacimiento:',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text('01/01/1990')
              ]),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Email:',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text('AnaDeArmas@gmail.com')
              ]),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Telefone:',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text('(11) 99999-9999')
              ]),
            ])));
  }
}
