import 'package:flutter/material.dart';


class WomenOnTopCard extends StatelessWidget {
  final VoidCallback onTap;
  const WomenOnTopCard({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: MediaQuery.of(context).size.width * 0.3, // par exemple, 50% de la largeur de l'écran
          height: MediaQuery.of(context).size.height * 0.15,
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
              'Women on top',
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


class PageWomenOnTop extends StatelessWidget {
  const PageWomenOnTop({Key? key}) : super(key: key);

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
