import 'package:flutter/material.dart';
import 'package:slnproject/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:slnproject/screens/cart.dart';
import 'package:slnproject/reusable/cartproductcard.dart';

class ProductInfo extends StatelessWidget {
  int num = 0;
  ProductInfo({this.name, this.quantity, this.price, this.image});
  final String name;
  final String quantity;
  final String price;
  final String image;
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
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    '$name',
                    style: kProductInfoName,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    '$image',
                    height: 300,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        '$quantity',
                        style: kProductInfoValues,
                      ),
                      Text(
                        'Rs $price',
                        style: kProductInfoValues,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    onPressed: () {
                      num++;
                      EdgeAlert.show(context,
                          backgroundColor: Colors.green,
                          icon: FontAwesomeIcons.checkCircle,
                          title: 'x$num Items added to Cart',
                          gravity: EdgeAlert.TOP);
                      /////////////////////////////////////////////////////////////
                      cartItems.add(CartProductCard(
                        name: name,
                        price: price,
                        quantity: quantity,
                        image: image,
                      ));
                      /////////////////////////////////////////////////////
                    },
                    child: Card(
                      elevation: 10,
                      color: Colors.orangeAccent,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.cartPlus,
                              color: Colors.white,
                              size: 35,
                            ),
                            Text(
                              'Add To Cart',
                              style: kAdvertisement,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: Colors.lightGreen[100],
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'About The Product',
                            style: kProductInfoTitle,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "With greenish black to smooth dark green surface, Fresho watermelons are globular in shape and are freshly picked for you directly from our farmers.The juicy sweet and grainy textured flesh is filled with 12-14% of sugar content, making it a healthy alternative to sugary carbonated drinks. Flesh colour of these watermelons are pink to red with dark brown/black seeds.",
                            style: kProductInfoText,
                          )
                        ],
                      ),
                    ),
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
