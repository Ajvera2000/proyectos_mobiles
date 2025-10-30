import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page Home')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilledButton(
              onPressed: () {
                //navigator.of(context).push(
                //materialPageRoute(
                //builder: (context) => prfile(),),)
                Navigator.pushNamed(context, '/profile');
              },
              child: const Text('Next '),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: const Text('Log out  '),
            ),
          ],
        ),
      ),
    );
  }
}
