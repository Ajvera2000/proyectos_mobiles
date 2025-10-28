import 'package:flutter/material.dart';
import 'package:menu_drawer/src/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text("navegacion drawer app"),
          backgroundColor: const Color.fromARGB(255, 42, 202, 125),
        ),
        body: Center(
          child: Text("página principal", style: TextStyle(fontSize: 50.0)),
        ),
      ),
    );
  }
}
