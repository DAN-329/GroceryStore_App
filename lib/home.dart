import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screens/bestseller.dart';
import 'constants.dart';
import 'screens/profile.dart';
import 'screens/catlog.dart';
import 'screens/search.dart';
import 'screens/cart.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  @override
  List screens = [BestSeller(), Catalog(), Search(), Cart(), ProfilePage()];

  Widget build(BuildContext context) {
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
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(kappBarColor),
            ),
            title: Text(
              'Home',
              style: kbottomNavigatorTxt,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.kitchen,
              color: Color(kappBarColor),
            ),
            title: Text(
              'Catalog  ',
              style: kbottomNavigatorTxt,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(kappBarColor),
            ),
            title: Text(
              'Search',
              style: kbottomNavigatorTxt,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.shoppingBasket,
              color: Color(kappBarColor),
            ),
            title: Text(
              'Basket',
              style: kbottomNavigatorTxt,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(kappBarColor),
            ),
            title: Text(
              'Profile',
              style: kbottomNavigatorTxt,
            ),
          ),
        ],
      ),
    );
  }
}
