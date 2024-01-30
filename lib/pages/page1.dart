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
            child: Padding(
              padding: const EdgeInsets.only(top: 20), // Espace après l'AppBar
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WomenOnTopCard(onTap: () => _onWomenOnTopTapped(context)),
                      ManOnTopCard(onTap: () => _onWomenOnTopTapped(context)),
                    ],
                  ),
                  const SizedBox(height: 20), // Espace entre les lignes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WomenOnTopCard(onTap: () => _onWomenOnTopTapped(context)),
                      ManOnTopCard(onTap: () => _onWomenOnTopTapped(context)),
                    ],
                  ),
                  const SizedBox(height: 20), // Répétez pour chaque espace entre les lignes
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WomenOnTopCard(onTap: () => _onWomenOnTopTapped(context)),
                      ManOnTopCard(onTap: () => _onWomenOnTopTapped(context)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WomenOnTopCard(onTap: () => _onWomenOnTopTapped(context)),
                      ManOnTopCard(onTap: () => _onWomenOnTopTapped(context)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
