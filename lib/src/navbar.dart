import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Angelo Vera"),
            accountEmail: Text("ajb.vera@yavirac.edu.ec"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('images/mujer.jpg')),
            ),
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: AssetImage("images/ladrillos.jpg"),
                fit: BoxFit.cover, // ✅ fit va aquí
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Buscar"),
            onTap: () => print("Buscar archivos "),
          ),
          ListTile(
            leading: Icon(Icons.notification_add),
            title: Text("Notificacion"),
            onTap: () => print("notificaciones"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("siguiente"),
            onTap: () => print("sigamos"),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text("atras"),
            onTap: () => print("retroceder proceso"),
          ),
        ],
      ),
    );
  }
}
