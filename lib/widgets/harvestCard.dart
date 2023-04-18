import 'package:flutter/material.dart';

class Toharvest extends StatelessWidget {
  const Toharvest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            'Solde en attente',
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
