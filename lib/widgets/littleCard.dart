import 'package:flutter/material.dart';

class LittleCard extends StatelessWidget {
  const LittleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InformationPage(),
          ),
        );
      },
      child: Container(
        width: 181,
        height: 174,
        decoration: BoxDecoration(
          color: Color(0xFFFF6F59),
          borderRadius: BorderRadius.circular(26),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Stacking',
              style: TextStyle(
                fontSize: 22,
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
        title: Text('Stacking'),
      ),
      body: Center(
        child: Text('Informations sur Stacking'),
      ),
    );
  }
}
