import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BotonesScreen extends StatefulWidget {
  const BotonesScreen({super.key});

  @override
  State<BotonesScreen> createState() => _BotonesScreenState();
}

class _BotonesScreenState extends State<BotonesScreen> {
  int _pagina = 0;

  final _pantallas = [
    const Center(child: Text('Bienvenido a pantalla de nco', style: TextStyle(fontSize: 18))),
    const Center(child: Text('Favoritos')),
    const Center(child: Text('Buscar')),
    const Center(child: Text('Perfil')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E2C), // Azul grisáceo oscuro elegante
        title: const Text(
          'ZukoPolarX',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.1,
          ),
        ),
        centerTitle: true,
        elevation: 8,
      ),
      backgroundColor: const Color(0xFFF5F5F7), // Fondo gris claro y limpio
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0xFFF5F5F7), // mismo fondo
        color: const Color(0xFF2C2C54), // Azul oscuro con matiz púrpura
        buttonBackgroundColor: const Color(0xFF4B56D2), // Azul elegante para ítem activo
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _pagina = index;
          });
        },
      ),
      body: _pantallas[_pagina],
    );
  }
}
