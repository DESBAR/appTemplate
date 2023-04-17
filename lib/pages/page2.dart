import 'package:flutter/material.dart';
import 'package:mobiletemplate/widgets/cardInfo.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF43AA8B),
        title: const Text(
          'Space',
          style: TextStyle(
            color: Colors.black, // Couleur du texte en noir
          ),
        ),
        centerTitle: false,
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.person,
              color: Colors.black,
            ),
          ),
        ],
      ),
      
    );
  }
  }
