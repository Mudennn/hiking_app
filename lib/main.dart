import 'package:flutter/material.dart';

void main() {
  runApp(HikingApp());
}

class HikingApp extends StatefulWidget {
  HikingApp({super.key});

  @override
  State<HikingApp> createState() => _HikingAppState();
}

class _HikingAppState extends State<HikingApp> {
  String buttonName = 'Click';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Denai Hiking'),
        ),
        // body: const Text('Hello Damian!'),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonName = 'Clicked';
                  });
                },
                child: Text(buttonName))),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Explore', icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: 'Trip', icon: Icon(Icons.settings)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.people)),
          ],
        ),
      ),
    );
  }
}
