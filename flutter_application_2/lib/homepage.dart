import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/calendar.dart';
import 'package:flutter_application_2/pages/centers.dart';
import 'package:flutter_application_2/pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserProfile(),
    Usercenters(),
    Usercalender(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(136, 252, 118, 65),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedFontSize: 20.0,
          unselectedFontSize: 12.0,
          selectedLabelStyle: TextStyle(
            color: Colors.white,
            fontSize: 10.0,
            fontFamily: "Times New Roman",
          ),
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'centers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'calendar',
            ),
          ],
        ),
      );
}
