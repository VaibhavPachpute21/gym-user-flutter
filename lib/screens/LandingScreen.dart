import 'package:flutter/material.dart';
import 'package:gym_app/screens/Event/EventScreen.dart';
import 'package:gym_app/screens/Home/HomeScreen.dart';
import 'package:gym_app/screens/Profile/ProfileScreen.dart';
import 'package:gym_app/screens/Progress/ProgressScreen.dart';
import 'package:gym_app/screens/Scanner/QRScannerPage.dart';
import 'package:permission_handler/permission_handler.dart';

class Landingscreen extends StatefulWidget {
  const Landingscreen({super.key});

  @override
  State<Landingscreen> createState() => _LandingscreenState();
}

class _LandingscreenState extends State<Landingscreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOption = [
    HomeScreen(),
    EventScreen(),
    ProgressScreen(),
    Profilescreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _checkPermiessions() async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      print("Permissions given");
    } else {
      var result = await Permission.camera.request();
      print(result.isGranted);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkPermiessions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange,
        title: const Text("My Gym",
            style: TextStyle(fontSize: 18, color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.qr_code_scanner,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QRScannerPage()));
            },
          )
        ],
      ),
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
