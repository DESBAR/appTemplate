import 'package:flutter/material.dart';
import 'package:mobiletemplate/pages/page1.dart';
import 'package:mobiletemplate/pages/page2.dart';
import 'package:mobiletemplate/pages/page3.dart';
import 'package:mobiletemplate/pages/page4.dart';

class BottomNavigation extends StatefulWidget {
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
        backgroundColor: Colors.white,
        unselectedItemColor: Color(0xFF9397A0),
        selectedItemColor: Color(0xFF3D616B),
        currentIndex: _currentIndex,
        showSelectedLabels: true,
      
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Page 1'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Page 2'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Page 3'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Page 4'),
        ],
      ),
    );
  }
}
