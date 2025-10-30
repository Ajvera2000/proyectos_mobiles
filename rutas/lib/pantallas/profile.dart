import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Profile')),
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
