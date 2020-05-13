import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screens/veggies.dart';
import 'screens/meats.dart';
import 'screens/snacks.dart';
import 'screens/milk.dart';
import 'constants.dart';

class CatalogHome extends StatefulWidget {
  CatalogHome({this.num});
  int num;
  @override
  _CatalogHomeState createState() => _CatalogHomeState();
}

class _CatalogHomeState extends State<CatalogHome> {
  @override
  List screens = [VeggiesPage(), MeatsPage(), MilkPage(), SnacksPage()];
  Widget build(BuildContext context) {
    int currentIndex = widget.num;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        elevation: 30,
        showSelectedLabels: true,
        backgroundColor: Colors.white,
        iconSize: 30,
        onTap: (index) {
          setState(() {
            //currentIndex = index;
            widget.num = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(
              FontAwesomeIcons.carrot,
              color: Colors.white,
            ),
            title: Text(
              'Veggies',
              style: kbottomNavigator2Txt,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red[600],
            icon: Icon(
              FontAwesomeIcons.drumstickBite,
              color: Colors.white,
            ),
            title: Text(
              'Meats',
              style: kbottomNavigator2Txt,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueGrey[800],
            icon: Icon(
              FontAwesomeIcons.cheese,
              color: Colors.white,
            ),
            title: Text(
              'Milk PRO',
              style: kbottomNavigator2Txt,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(
              FontAwesomeIcons.cookieBite,
              color: Colors.white,
            ),
            title: Text(
              'Snacks',
              style: kbottomNavigator2Txt,
            ),
          ),
        ],
      ),
    );
  }
}
