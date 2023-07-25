import 'package:flutter/material.dart';
import 'package:mobiletemplate/pages/page1.dart';
import 'package:mobiletemplate/pages/page2.dart';
import 'package:mobiletemplate/pages/page3.dart';
import 'package:mobiletemplate/pages/page4.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [    Page1(),    Page2(),    Page3(),    Page4(),  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
   backgroundColor:Color(0xFF43AA8B),
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
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.handshake), label: 'Space'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
