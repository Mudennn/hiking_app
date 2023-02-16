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
 

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
   String buttonName = 'Click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Denai Hiking'),
          backgroundColor: Colors.green[200],
        ),
        // body: const Text('Hello Damian!'),
        body: Center(
          child: currentIndex == 0
              ? Container(
                  // untuk width screen
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.green[50], //background color untuk button
                  child: Row(
                    // alignment kepada row
                    mainAxisAlignment: MainAxisAlignment.end, //widget position
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.grey[100],
                            backgroundColor: Colors.green[500],
                          ),
                          onPressed: () {
                            // setState(() {
                            //   buttonName = 'Clicked';
                            // });
                            // untuk pi ke page lain bukan ikut navbar
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return const SecondPage();
                            }));
                          },
                          child: Text(buttonName)),
                      // ElevatedButton(
                      //     onPressed: () {
                      //       setState(() {
                      //         buttonName = 'Clicked';
                      //       });
                      //     },
                      //     child: Text(buttonName)),
                    ],
                  ),
                )
              //  : Image.network("https://unsplash.com/photos/gWjlDDJdmlI"),
              // : const SizedBox(),
              : Image.asset('images/tezos.jpg'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.green[200],
          selectedIconTheme: IconThemeData(
            color: Colors.green[500],
          ),
          unselectedItemColor: Colors.grey[100],
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
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
