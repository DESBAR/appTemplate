import 'package:flutter/material.dart';
import 'package:mobiletemplate/pages/page1.dart';
import 'package:mobiletemplate/pages/page2.dart';
import 'package:mobiletemplate/pages/page3.dart';
import 'package:mobiletemplate/pages/page4.dart';
import 'package:mobiletemplate/widgets/theme.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.navbarColor,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.male_outlined), label: 'Positions'),
          BottomNavigationBarItem(
              icon: Icon(Icons.handshake), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shuffle), label: 'Random'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
