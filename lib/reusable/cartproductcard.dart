import 'package:flutter/material.dart';
import 'package:slnproject/screens/cart.dart';
import '../constants.dart';
import 'package:edge_alert/edge_alert.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartProductCard extends StatefulWidget {
  CartProductCard({this.name, this.quantity, this.price, this.image});
  final String name;
  final String quantity;
  final String price;
  final String image;
  @override
  _CartProductCardState createState() => _CartProductCardState();
}

class _CartProductCardState extends State<CartProductCard> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      elevation: 20,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
            width: 3,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
              image: AssetImage('${widget.image}'),
              height: 150,
              width: 150,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  '${widget.name}',
                  style: kCardText,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  '${widget.quantity}',
                  style: kCardText,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Rs ${widget.price}',
                  style: kCardText,
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    setState(() {
                      //                num++;
                      EdgeAlert.show(context,
                          backgroundColor: Colors.red,
                          icon: FontAwesomeIcons.checkCircle,
                          title: 'Item removed from Cart. Please Refresh',
                          gravity: EdgeAlert.TOP);
                      remove(
                        CartProductCard(
                          name: widget.name,
                          price: widget.price,
                          quantity: widget.quantity,
                          image: widget.image,
                        ),
                      );
                      print("Activated 1");
                    });
                  },
                  child: Card(
                    color: Colors.redAccent,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        //'REMOVE',
                        'UNDO',
                        style: kADD,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
