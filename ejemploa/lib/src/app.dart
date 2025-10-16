import 'package:flutter/material.dart';
import 'botones.dart'; // 👈 Importamos la otra pantalla

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // TextField compacto con label afuera
  Widget customTextField(String label, String hint, IconData icon, {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat",
              ),
            ),
          ),
          SizedBox(
            width: 180, // ancho fijo del TextField
            height: 40, // altura compacta
            child: TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: hint,
                suffixIcon: Icon(icon, color: const Color(0xFF4B0082)),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                hintStyle: const TextStyle(color: Color(0xFF4B0082), fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Botón reutilizable
  Widget customButton(String text, Color bgColor, Color fgColor, VoidCallback onPressed, {double width = 140}) {
    return SizedBox(
      width: width,
      height: 40, // botón compacto
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(fontFamily: "Montserrat", fontSize: 15),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4B0082),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // Avatar
              CircleAvatar(
                radius: 90,
                backgroundColor: Colors.white,
                child: const CircleAvatar(
                  radius: 85,
                  backgroundImage: AssetImage("images/angel.jpg"),
                ),
              ),
              const SizedBox(height: 20),

              // Títulos
              const Text(
                "Login",
                style: TextStyle(
                  fontFamily: "NerkoOne",
                  fontSize: 50,
                  color: Colors.amberAccent,
                ),
              ),
              const Text(
                "Ejemplo1",
                style: TextStyle(
                  fontFamily: "OleoScriptSwashCaps",
                  fontSize: 40,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 25),

              // Campos de texto
              customTextField("User", "Ingrese su usuario", Icons.verified_user),
              customTextField("Password", "Ingrese su contraseña", Icons.lock, obscureText: true),
              customTextField("Email", "Ingrese su correo", Icons.email),
              const SizedBox(height: 25),

              // Fila: Ingresar y Registrarse
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 👉 Aquí modificamos el botón INGRESAR para que navegue
                  customButton("Ingresar", Colors.purpleAccent.shade100, Colors.white, () {
                    // Mostrar mensaje
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Ingresando...")),
                    );

                    // Esperar un segundo y navegar a BotonesScreen
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const BotonesScreen()),
                      );
                    });
                  }),

                  const SizedBox(width: 15),

                  customButton("Registrarse", Colors.purple.shade400, Colors.white, () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Registrando...")),
                    );
                  }),
                ],
              ),

              const SizedBox(height: 12),

              // Botón Salir centrado debajo
              customButton("Salir", Colors.redAccent, Colors.white, () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Saliendo...")),
                );
              }, width: 150),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
