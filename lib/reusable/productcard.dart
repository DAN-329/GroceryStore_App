import 'package:flutter/material.dart';
import 'package:slnproject/screens/cart.dart';
import '../constants.dart';
import 'productinfo.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slnproject/reusable/cartproductcard.dart';

class itemsCard extends StatelessWidget {
  int num = 0;
  itemsCard({this.name, this.quantity, this.price, this.image});
  final String name;
  final String quantity;
  final String price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ProductInfo(
                name: name,
                quantity: quantity,
                price: price,
                image: image,
              );
            },
          ),
        );
        //return ProductInfo();
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        elevation: 20,
        //color: Colors.grey[300],
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
              image: AssetImage('$image'),
              height: 150,
              width: 150,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$name',
                  style: kCardText,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  '$quantity',
                  style: kCardText,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Rs $price',
                  style: kCardText,
                ),
                SizedBox(
                  height: 5,
                ),
              ],
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
                color: Colors.orange,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'ADD',
                    style: kADD,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
