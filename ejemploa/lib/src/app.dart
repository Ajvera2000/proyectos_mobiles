import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 54, 52), // fondo oscuro
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // Imagen principal
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.red,
                backgroundImage: const AssetImage("images/angel.jpg"),
              ),

              const SizedBox(height: 20),

              // Título
              const Text(
                "Login",
                style: TextStyle(
                  fontFamily: "NerkoOne",
                  fontSize: 50.0,
                  color: Colors.white,
                ),
              ),

              // Subtítulo
              const Text(
                "Ejemplo1",
                style: TextStyle(
                  fontFamily: "OleoScriptSwashCaps",
                  fontSize: 40.0,
                  color: Colors.lightGreenAccent,
                ),
              ),

              const SizedBox(height: 30),

              // Campos de usuario
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // USERNAME
                  Center(
                    child: SizedBox(
                      width: 250,
                      child: TextField(
                        enableInteractiveSelection: false,
                        decoration: const InputDecoration(
                          hintText: "USER-NAME",
                          labelText: "user-name",
                          suffixIcon: Icon(Icons.verified_user),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // PASSWORD
                  Center(
                    child: SizedBox(
                      width: 250,
                      child: TextField(
                        enableInteractiveSelection: false,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "PASSWORD",
                          labelText: "password",
                          suffixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // EMAIL
                  Center(
                    child: SizedBox(
                      width: 250,
                      child: TextField(
                        enableInteractiveSelection: false,
                        decoration: const InputDecoration(
                          hintText: "EMAIL",
                          labelText: "EMAIL",
                          suffixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // BOTÓN INGRESAR
                  Center(
                    child: SizedBox(
                      width: 180,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Text('Ingresar'),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // BOTÓN REGISTRARSE
                  Center(
                    child: SizedBox(
                      width: 180,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green.shade700,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Text('Registrarse'),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // BOTÓN RECUPERAR CONTRASEÑA
                  Center(
                    child: SizedBox(
                      width: 180,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Text('Recuperar Contraseña'),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // BOTÓN MODO INVITADO
                  Center(
                    child: SizedBox(
                      width: 180,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Text('Modo Invitado'),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
