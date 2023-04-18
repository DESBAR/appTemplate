import 'package:flutter/material.dart';
import 'package:mobiletemplate/widgets/cardInfo.dart';
import 'package:mobiletemplate/widgets/stackingCard.dart';
import 'package:mobiletemplate/widgets/harvestCard.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4E9E9), // Couleur de fond de la page
      body: 
      CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: const Color(0xFF43AA8B),
            title: Text(
              'Wallet',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: false,
            actions: [
              CircleAvatar(
                backgroundColor: Colors.transparent, 
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ],
            floating: true,
            snap: true,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) => CardInfo(),
                    itemCount: 2,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    StackingCard(),
                    Toharvest(),
                  ],
                ),
                Padding(padding: EdgeInsets.all(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    StackingCard(),
                    Toharvest(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    StackingCard(),
                    Toharvest(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    StackingCard(),
                    Toharvest(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    StackingCard(),
                    Toharvest(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
