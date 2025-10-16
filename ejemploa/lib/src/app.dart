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
      backgroundColor: const Color.fromARGB(255, 1, 54, 52),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50), 
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.red,
                backgroundImage: const AssetImage("images/angel.jpg"),
              ),
              const SizedBox(height: 20), 
              const Text(
                "Login",
                style: TextStyle(
                  fontFamily: "NerkoOne", //Siempre poner la fuente en pubspec.yaml 
                  fontSize: 50.0
                ),
              ),
              const Text(
                "Ejemplo1",
                style: TextStyle(
                  fontFamily: "OleoScriptSwashCaps", //Siempre poner la fuente en pubspec.yaml 
                  fontSize: 40.0,
                ),
              ),

              // crear un campo de usuario
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

    SizedBox(height: 15), // espacio entre campos

    // PASSWORD
    Center(
      child: SizedBox(
        width: 250,
        child: TextField(
          enableInteractiveSelection: false,
          decoration: const InputDecoration(
            hintText: "PASSWORD-PASSWORD",
            labelText: "password",
            suffixIcon: Icon(Icons.password),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
        ),
      ),
    ),

    SizedBox(height: 15),

    // EMAIL
    Center(
      child: SizedBox(
        width: 250,
        child: TextField(
          enableInteractiveSelection: false,
          decoration: const InputDecoration(
            hintText: "EMAIL-EMAIL",
            labelText: "EMAIL",
            suffixIcon: Icon(Icons.email),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
        ),
      ),
    ),

    SizedBox(height: 20),

    // BOTON INGRESAR
    Center(
      child: SizedBox(
        width: 180, // ancho del botón
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: const Color.fromARGB(255, 75, 193, 75),
          ),
          onPressed: () {},
          child: const Text('Ingresar'),
        ),
      ),
    ),

    SizedBox(height: 20),

    // BOTON REGISTRARSE
    Center(
      child: SizedBox(
        width: 180,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: const Color.fromARGB(255, 75, 193, 75),
          ),
          onPressed: () {},
          child: const Text('Registrarse'),
        ),
      ),
    ),
SizedBox(height: 20),

    // BOTON RECUPERA CONTRASEÑA
    Center(
      child: SizedBox(
        width: 180,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: const Color.fromARGB(255, 22, 2, 69),
          ),
          onPressed: () {},
          child: const Text('Recuperar Contraseña'),
        ),
      ),
    ),
    SizedBox(height: 20),

    // BOTON MODO INVITADO
    Center(
      child: SizedBox(
        width: 180,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: const Color.fromARGB(255, 67, 19, 224),
          ),
          onPressed: () {},
          child: const Text('Modo Invitado'),
        ),
      ),
    ),

  ],
)

            ],
          ),
        ],
      ),
    );
  }
}