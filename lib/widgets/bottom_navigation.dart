import 'package:flutter/material.dart';
import 'package:mobiletemplate/pages/page1.dart';
import 'package:mobiletemplate/pages/page2.dart';
import 'package:mobiletemplate/pages/page3.dart';
import 'package:mobiletemplate/pages/page4.dart';
import 'package:mobiletemplate/widgets/WomenOnTop.dart';
import 'package:mobiletemplate/widgets/theme.dart';


//route
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
  late final List<Widget> _pages;

  _BottomNavigationState() {
    _pages = [
      const Page1(),
      const Page2(),
      const Page3(),
      const Page4(),
      WomenOnTopCard(onTap: _onWomenOnTopTapped),
    ];
  }

  void _onWomenOnTopTapped() {
    // Ici, vous pouvez gérer la navigation ou l'action spécifique
    // pour la page WomenOnTop.
    // Par exemple, naviguer vers une nouvelle page:
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PageWomenOnTop()));
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

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