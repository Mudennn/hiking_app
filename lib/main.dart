import 'package:flutter/material.dart';

void main() {
  runApp(const HikingApp());
}

class HikingApp extends StatelessWidget {
  const HikingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Denai Hiking'),
        ),
        body: const Text('Hello Damian!'),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              label: 'Explore',
              icon: Icon(Icons.search)
            ),
            BottomNavigationBarItem(
              label: 'Trip',
              icon: Icon(Icons.settings)
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.people)
            ),
            ],

        ),
      ) ,

    );
  }
}
