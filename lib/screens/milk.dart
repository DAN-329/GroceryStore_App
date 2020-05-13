import 'package:slnproject/constants.dart';
import 'package:slnproject/items/milk_items.dart';
import 'package:slnproject/reusable/productcard.dart';
import 'package:flutter/material.dart';
import 'package:slnproject/reusable/drawer.dart';

List itemGenerator() {
  MilkPro itemsData = MilkPro();
  List<Widget> bestSellers = [
    Container(
      padding: EdgeInsets.all(5),
      color: Colors.blueGrey[300],
      width: double.infinity,
      child: Center(
        child: Text(
          'Milk Product\'s',
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

class MilkPage extends StatefulWidget {
  @override
  _MilkPageState createState() => _MilkPageState();
}

class _MilkPageState extends State<MilkPage> {
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
