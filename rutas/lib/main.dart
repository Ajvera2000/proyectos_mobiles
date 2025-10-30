import 'package:flutter/material.dart';
import 'package:rutas/pantallas/home.dart';
import 'package:rutas/pantallas/login.dart';
import 'package:rutas/pantallas/profile.dart';
import 'package:rutas/pantallas/screen_error.dart';
import 'package:rutas/pantallas/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.blue),
      //iniciar el codigo para generar rutas
      initialRoute: "/",
      routes: {
        "/": (context) => const Login(),
        "/home": (context) => const Home(),
        "/profile": (context) => const Profile(),
        "/profile/settings": (context) => const Settings(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const ScreenError());
      },
    );
  }
}
