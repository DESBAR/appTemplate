import 'package:flutter/material.dart';


class ManOnTopCard extends StatelessWidget {
  final VoidCallback onTap;
  const ManOnTopCard({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 220,
        height: 220,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('lib/assets/montagne.png'),
            fit: BoxFit.cover,
          ),
          color: const Color(0xFFFF6F59),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Men on top',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class PageManOnTop extends StatelessWidget {
  const PageManOnTop({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        
        appBar: AppBar(
          backgroundColor: const Color(0xFF43AA8B),
          title: const Text('Women on top '),
        ),
        
        body: const Center(
          child: Text('Liste de position ou la femme est sur l' 'hommme '),
        ),
      
      );
    }
  }
