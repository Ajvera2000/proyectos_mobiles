import 'package:flutter/material.dart';
import 'package:navegar/pantalla/pantalla2.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Uno'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text(
            'Ir a Pantalla Dos',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PantallaDos()),
            );
          },
        ),
      ),
    );
  }
}
