import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 380,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF43AA8B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    'Mon compte SOL >',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(width: 10),
        
              ],
            ),
            SizedBox(height: 20),
            Text(
              '15.3134000 SOL',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'valeur en USD = 1000\$',
              style: TextStyle(
              fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
