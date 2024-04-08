import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro de Paciente',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistroPacientePage(),
    );
  }
}

class RegistroPacientePage extends StatefulWidget {
  @override
  _RegistroPacientePageState createState() => _RegistroPacientePageState();
}

class _RegistroPacientePageState extends State<RegistroPacientePage> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _apellidoPaternoController = TextEditingController();
  final TextEditingController _apellidoMaternoController = TextEditingController();
  final TextEditingController _edadController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _generoController = TextEditingController();
  final TextEditingController _paisController = TextEditingController();
  final TextEditingController _contrasenaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Paciente'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
            ),
            TextField(
              controller: _apellidoPaternoController,
              decoration: InputDecoration(
                labelText: 'Apellido Paterno',
              ),
            ),
            TextField(
              controller: _apellidoMaternoController,
              decoration: InputDecoration(
                labelText: 'Apellido Materno',
              ),
            ),
            TextField(
              controller: _edadController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Edad',
              ),
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Correo Electrónico',
              ),
            ),
            TextField(
              controller: _generoController,
              decoration: InputDecoration(
                labelText: 'Género',
              ),
            ),
            TextField(
              controller: _paisController,
              decoration: InputDecoration(
                labelText: 'País',
              ),
            ),
            TextField(
              controller: _contrasenaController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí agregarías la lógica de registro
                // Por ejemplo, validar los campos y crear la cuenta del paciente
              },
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}

