import 'package:flutter/material.dart';
import 'package:slnproject/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:slnproject/screens/cart.dart';
import 'package:slnproject/reusable/cartproductcard.dart';

class ErrorPage extends StatelessWidget {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Card(
            color: Colors.white,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Item not Found',
                      style: TextStyle(
                        fontFamily: 'Kaushan',
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'images/error.JPG',
                    height: 300,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'We Couldn\'t find your Item. \n\n'
                    'Dont worry we have our best man on the case!',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 90,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
