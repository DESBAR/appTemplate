import 'package:flutter/material.dart';
import 'package:mobiletemplate/widgets/cardInfo.dart';
import 'package:mobiletemplate/widgets/WomenOnTop.dart';
import 'package:mobiletemplate/widgets/ManOnTop.dart';
import 'package:mobiletemplate/widgets/theme.dart';
class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  void _onWomenOnTopTapped(BuildContext context) {
    // Exemple de navigation, remplacez par votre logique de navigation
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const PageWomenOnTop()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4E9E9), // Couleur de fond de la page
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: AppTheme.navbarColor,
            title: Text(
              'Positions',
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
                    itemBuilder: (BuildContext context, int index) =>
                        const CardInfo(),
                    itemCount: 2,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WomenOnTopCard(onTap: () => _onWomenOnTopTapped(context)),
                    const Manontop(),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WomenOnTopCard(onTap: () => _onWomenOnTopTapped(context)),
                    const Manontop(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WomenOnTopCard(onTap: () => _onWomenOnTopTapped(context)),
                    const Manontop(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WomenOnTopCard(onTap: () => _onWomenOnTopTapped(context)),
                    const Manontop(),
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