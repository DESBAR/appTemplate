import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobiletemplate/widgets/cardInfo.dart';
import 'package:mobiletemplate/widgets/stackingCard.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4E9E9), // Couleur de fond de la page
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFF43AA8B),
        title: const Text(
          'Shop',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        actions: const [],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/wallpaper.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            StackingCard()
// Your content here
          ],
        ),
      ),
    );
  }
}
