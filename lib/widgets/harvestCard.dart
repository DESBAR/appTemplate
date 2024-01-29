import 'package:flutter/material.dart';

class Toharvest extends StatelessWidget {
  const Toharvest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        color: const Color(0xFFFF6F59),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Man on top',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
