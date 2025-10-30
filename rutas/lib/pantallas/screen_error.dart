import 'package:flutter/material.dart';

class ScreenError extends StatelessWidget {
  const ScreenError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Error')),
      body: Center(child: Text('Screen Not Error ')),
    );
  }
}
