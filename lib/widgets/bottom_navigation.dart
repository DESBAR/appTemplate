import 'package:flutter/material.dart';
import 'package:mobiletemplate/pages/page1.dart';
import 'package:mobiletemplate/pages/page2.dart';
import 'package:mobiletemplate/pages/page3.dart';
import 'package:mobiletemplate/pages/page4.dart';

import 'package:mobiletemplate/widgets/theme.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  // Création d'une clé pour chaque Navigator
  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  void _onItemTapped(int index) {
    if (index == _currentIndex) {
      // Pop to first route if user taps the same tab
      _navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  Widget _buildOffstageNavigator(int index) {
    return Offstage(
      offstage: _currentIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) {
              switch (index) {
                case 0:
                  return const Page1();
                case 1:
                  return const Page2();
                case 2:
                  return const Page3();
                case 3:
                  return const Page4();
                default:
                  return const Page1();
              }
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: List.generate(4, (index) => _buildOffstageNavigator(index)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppTheme.navbarColor,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
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
