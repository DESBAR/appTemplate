import 'package:flutter/material.dart';
import 'package:mobiletemplate/widgets/cardInfo.dart';
import 'package:mobiletemplate/widgets/littleCard.dart';
import 'package:mobiletemplate/widgets/littleCard1.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
         const SliverAppBar(
            backgroundColor: const Color(0xFF43AA8B),
            title: Text(
              'Wallet',
              style: TextStyle(
                
                color: Colors.black, // Couleur du texte en noir
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
  
            floating: true, // permet à l'AppBar de se rétracter lors du scroll
            snap: true, // permet à l'AppBar de se rétracter complètement
            // en fonction de la position de l'utilisateur
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
                    LittleCard(),
                    LittleCard1(),
                  ],
                ),
                    Padding(padding: EdgeInsets.all(20)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    LittleCard(),
                    LittleCard1(),
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    LittleCard(),
                    LittleCard1(),
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    LittleCard(),
                    LittleCard1(),
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    LittleCard(),
                    LittleCard1(),
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
