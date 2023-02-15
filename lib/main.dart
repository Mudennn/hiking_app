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
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Denai Hiking'),
          backgroundColor: Colors.green[200],
        ),
        // body: const Text('Hello Damian!'),
        body: Center(
            child: currentIndex == 0 ? Container(
          // untuk width screen
          width: double.infinity,
          height: double.infinity,
          color: Colors.green[50], //background color untuk button
          child: Row(
            // alignment kepada row
            mainAxisAlignment: MainAxisAlignment.center, //widget position
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.grey[100], backgroundColor: Colors.green[500]),
                  onPressed: () {
                    setState(() {
                      buttonName = 'Clicked';
                    });
                  },
                  child: Text(buttonName)),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonName = 'Clicked';
                    });
                  },
                  child: Text(buttonName)),
            ],
          ),
        ): const SizedBox() ) ,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Explore', icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: 'Trip', icon: Icon(Icons.settings)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.people)),
          ],
          // Untuk bagi boleh tukar2 tab
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
