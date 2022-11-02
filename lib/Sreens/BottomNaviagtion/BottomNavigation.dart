import 'package:flutter/material.dart';

import '../EducationListScreen/EducationListScreen.dart';
import '../Observation_sollution/Observation_sollution.dart';
import '../homeScreen/Homepage.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.grey);
   static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const Observation_sollution(),
    const EducationListScreen(),
    const Text(
      'Report',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
      
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          
          ),
         
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Report',
        
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
