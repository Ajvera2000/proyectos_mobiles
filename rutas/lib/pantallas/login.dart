import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          child: const Text('Login in '),
        ),
      ),
    );
  }
}
