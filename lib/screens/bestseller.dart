import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slnproject/constants.dart';
import 'package:slnproject/reusable/productcard.dart';
import 'package:slnproject/items/bestseller_items.dart';
import 'package:slnproject/reusable/drawer.dart';

List itemGenerator() {
  BestSellingItems itemsData = BestSellingItems();
  List<Widget> bestSellers = [
    Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 150, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/advertisement.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Text(
        'Freshness delivered right to you\'r doorstep !',
        style: kAdvertisement,
        textAlign: TextAlign.center,
      ),
    ),
    Container(
      padding: EdgeInsets.all(5),
      color: Color(kappBarColor),
      width: double.infinity,
      child: Center(
        child: Text(
          'Best Seller\'s',
          style: kTitle,
        ),
      ),
    ),
    SizedBox(
      height: 10,
    )
  ];
  for (int i = 0; i < itemsData.names.length; i++) {
    Widget item = itemsCard(
      name: itemsData.names[i],
      quantity: itemsData.quantity[i],
      price: itemsData.pice[i],
      image: itemsData.images[i],
    );
    bestSellers.add(item);
  }
  return bestSellers;
}

class BestSeller extends StatefulWidget {
  @override
  _BestSellerState createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerData(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(kappBarColor)),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'SLN Groceries  ',
            style: kMainAppbarTitle,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/vegetables.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          //child: widget.enteredWidget,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: itemGenerator(),
          ),
        ),
      ),
    );
  }
}
