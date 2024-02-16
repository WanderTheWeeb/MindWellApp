import 'dart:async';

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.isRegistering}) : super(key: key);

  static Route<void> route({bool isRegistering = false}) {
    return MaterialPageRoute(
      builder: (context) => RegisterPage(isRegistering: isRegistering),
    );
  }

  final bool isRegistering;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final bool _isLoading = false;

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();

  //late final StreamSubscription<AuthState> _authSubscription;

  @override
  void initState() {
    super.initState();

    bool haveNavigated = false;
    // Listen to auth state to redirect user when the user clicks on confirmation link
    /* _authSubscription = supabase.auth.onAuthStateChange.listen((data) {
      final session = data.session;
      if (session != null && !haveNavigated) {
        haveNavigated = true;
        Navigator.of(context).pushReplacement(RoomsPage.route());
      }
    });*/
  }

  @override
  void dispose() {
    super.dispose();

    // Dispose subscription when no longer needed
    // _authSubscription.cancel();
  }

  Future<void> _signUp() async {
    /*final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    final email = _emailController.text;
    final password = _passwordController.text;
    final username = _usernameController.text;
    try {
      await supabase.auth.signUp(
        email: email,
        password: password,
        data: {'username': username},
        emailRedirectTo: 'io.supabase.chat://login',
      );
      context.showSnackBar(
          message: 'Por favor revisa tu correo electronico para confirmar ');
    } on AuthException catch (error) {
      context.showErrorSnackBar(message: error.message);
    } catch (error) {
      debugPrint(error.toString());
      context.showErrorSnackBar(message: unexpectedErrorMessage);
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Registro'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          //padding: formPadding,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                label: Text('Email'),
              ),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Obligatorio';
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text('Contraseña'),
              ),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Obligatorio';
                }
                if (val.length < 6) {
                  return '6 caracteres como minimo';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                label: Text('Usuario'),
              ),
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Obligatorio';
                }
                final isValid = RegExp(r'^[A-Za-z0-9_]{3,24}$').hasMatch(val);
                if (!isValid) {
                  return '3-24 caracteres alfanuméricos';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _isLoading ? null : _signUp,
              child: const Text('Registrate'),
            ),
            const SizedBox(height: 16),
            TextButton(
                onPressed: () {}, child: const Text('Ya tengo una cuenta'))
          ],
        ),
      ),
    );
  }
}
