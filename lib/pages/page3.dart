import 'package:flutter/material.dart';
import 'package:mobiletemplate/widgets/cardInfo.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4E9E9), // Couleur de fond de la page
      appBar: AppBar(
        backgroundColor: const Color(0xFF43AA8B),
        title: const Text(
          'Shop',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        actions: const [
         
        ],
      ),
    );
  }
}
