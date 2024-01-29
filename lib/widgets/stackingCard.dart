import 'package:flutter/material.dart';

class StackingCard extends StatelessWidget {
  const StackingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const InformationPage(),
          ),
        );
      },
      child: Container(
        width: 160,
        height: 160,
         
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

class InformationPage extends StatelessWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: const Color(0xFF43AA8B),
        title: const Text('Stacking'),
      ),
      body: const Center(
        child: Text('Informations sur Stacking'),
      ),
    );
  }
}
