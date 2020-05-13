import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slnproject/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slnproject/reusable/drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

var alertStyle = AlertStyle(
    animationType: AnimationType.fromTop,
    isCloseButton: false,
    isOverlayTapDismiss: false,
    descStyle: TextStyle(fontWeight: FontWeight.bold),
    animationDuration: Duration(milliseconds: 400),
    alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
        side: BorderSide(color: Colors.grey)),
    titleStyle: TextStyle(
      color: Colors.orange,
      fontFamily: 'Courgette',
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ));

void remove(Widget widget) {
  for (int i = 1; i < cartItems.length; i++) {
    if (widget.key == cartItems[i].key) {
      cartItems.removeAt(i);
      break;
    }
  }
}

List<Widget> cartItems = [
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SizedBox(
        height: 130,
      ),
      Container(
        child: Text(
          'No Items in Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.white,
            fontFamily: 'Courgette',
          ),
        ),
      ),
      SizedBox(
        height: 300,
      ),
    ],
  )
];

int flag = 0;

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Widget> Items = [];

  List<Widget> reload() {
    setState(() {
      print("Length:");
      print(cartItems.length);
      print("Flag:");
      print(flag);
      if (cartItems.length == 1 && flag == 1) {
        cartItems[0] = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 130,
            ),
            Container(
              child: Text(
                'No Items in Cart',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                  fontFamily: 'Courgette',
                ),
              ),
            ),
            SizedBox(
              height: 300,
            ),
          ],
        );
      }
      if (cartItems.length == 1) flag = 0;
      if (cartItems.length >= 2 && flag == 0) {
        Items = [];
        cartItems[0] = SizedBox();
        flag = 1;
      }
      Items.addAll(cartItems);
      return Items;
    });
    return Items;
  }

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/cart.jpg"),
            fit: BoxFit.fill,
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                color: Colors.orange,
                child: Text(
                  'Your Cart',
                  style: kTitle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Icon(
                  FontAwesomeIcons.shoppingBag,
                  color: Colors.white,
                  size: 80,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: reload(),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                color: Colors.lightGreen,
                child: Text(
                  'Total Number of items = ${(Items.length) - 1}',
                  style: kTitle,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (Items.length > 1) {
                    Alert(
                      context: context,
                      style: alertStyle,
                      content: Container(
                        child: Icon(
                          FontAwesomeIcons.checkCircle,
                          size: 30,
                          color: Color(kappBarColor),
                        ),
                      ),
                      title: "Thank You",
                      desc: "Your Cart Items will be delivered shortly",
                    ).show();
                  } else {
                    Alert(
                      context: context,
                      style: alertStyle,
                      content: Container(
                        child: Icon(
                          FontAwesomeIcons.timesCircle,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                      title: "Hold On",
                      desc: "Your Cart is Empty",
                    ).show();
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  color: Colors.redAccent,
                  child: Text(
                    'Buy Now',
                    style: kTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
