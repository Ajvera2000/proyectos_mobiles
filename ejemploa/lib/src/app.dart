import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // Reutilizable: TextField personalizado
  Widget customTextField(String label, String hint, IconData icon) {
    return SizedBox(
      width: 250,
      child: TextField(
        enableInteractiveSelection: false,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          suffixIcon: Icon(icon, color: const Color(0xFF4B0082)),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          filled: true,
          fillColor: Colors.white,
          hintStyle: const TextStyle(color: Color(0xFF4B0082)),
          labelStyle: const TextStyle(color: Color(0xFF4B0082)),
        ),
      ),
    );
  }

  // Reutilizable: Botón personalizado
  Widget customButton(String text, Color bgColor, Color fgColor, VoidCallback onPressed) {
    return SizedBox(
      width: 180,
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
          style: const TextStyle(fontFamily: "Montserrat", fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4B0082), // Fondo morado elegante
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              // Avatar con borde elegante
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 95,
                  backgroundImage: const AssetImage("images/angel.jpg"),
                ),
              ),
              const SizedBox(height: 20),
              // Títulos elegantes
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
              const SizedBox(height: 30),

              // Campos de entrada
              customTextField("user-name", "USER-NAME", Icons.verified_user),
              const SizedBox(height: 15),
              customTextField("password", "PASSWORD-PASSWORD", Icons.password),
              const SizedBox(height: 15),
              customTextField("EMAIL", "EMAIL-EMAIL", Icons.email),
              const SizedBox(height: 30),

              // Botones con colores elegantes
              customButton("Ingresar", Colors.purpleAccent.shade100, Colors.white, () {}),
              const SizedBox(height: 15),
              customButton("Registrarse", Colors.purple.shade400, Colors.white, () {}),
              const SizedBox(height: 15),
              customButton("Recuperar Contraseña", Colors.deepPurple.shade300, Colors.white, () {}),
              const SizedBox(height: 15),
              customButton("Modo Invitado", Colors.cyan.shade300, Colors.white, () {}),
              const SizedBox(height: 30),

              // Ejemplo de uso de otras fuentes
              const Text(
                "BebasNeue Font",
                style: TextStyle(fontFamily: "BebasNeue", fontSize: 24, color: Colors.white70),
              ),
              const SizedBox(height: 10),
              const Text(
                "Pacifico Font",
                style: TextStyle(fontFamily: "Pacifico", fontSize: 24, color: Colors.white70),
              ),
              const SizedBox(height: 10),
              const Text(
                "Roboto Font",
                style: TextStyle(fontFamily: "Roboto", fontSize: 20, color: Colors.white70),
              ),
              const SizedBox(height: 10),
              const Text(
                "Montserrat Font",
                style: TextStyle(fontFamily: "Montserrat", fontSize: 20, color: Colors.white70),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
