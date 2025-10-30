import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page settings')),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/profile/settings');
          },
          child: const Text('Next  '),
        ),
      ),
    );
  }
}
