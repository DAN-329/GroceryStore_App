import 'package:flutter/material.dart';
import 'package:slnproject/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

IconData p1 = FontAwesomeIcons.circle,
    p2 = FontAwesomeIcons.circle,
    p3 = FontAwesomeIcons.circle,
    p4 = FontAwesomeIcons.circle,
    p5 = FontAwesomeIcons.circle;

class PaymentPage extends StatefulWidget {
  PaymentPage({this.content});
  final Widget content;
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
              image: AssetImage("images/cart.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Card(
            color: Colors.black45,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          'Payment\'s',
                          style: kAdvertisement,
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              p1 = FontAwesomeIcons.dotCircle;
                              p2 = FontAwesomeIcons.circle;
                              p3 = FontAwesomeIcons.circle;
                              p4 = FontAwesomeIcons.circle;
                              p5 = FontAwesomeIcons.circle;
                            });
                          },
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(
                                    p1,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.moneyBill,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  Text(
                                    'Cash on Delivery',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Courgette',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              p1 = FontAwesomeIcons.circle;
                              p2 = FontAwesomeIcons.dotCircle;
                              p3 = FontAwesomeIcons.circle;
                              p4 = FontAwesomeIcons.circle;
                              p5 = FontAwesomeIcons.circle;
                            });
                          },
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(
                                    p2,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.creditCard,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  Text(
                                    '    Credit Card    ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Courgette',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              p1 = FontAwesomeIcons.circle;
                              p2 = FontAwesomeIcons.circle;
                              p3 = FontAwesomeIcons.dotCircle;
                              p4 = FontAwesomeIcons.circle;
                              p5 = FontAwesomeIcons.circle;
                            });
                          },
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(
                                    p3,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.ccPaypal,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  Text(
                                    '      Pay Pal      ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Courgette',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              p1 = FontAwesomeIcons.circle;
                              p2 = FontAwesomeIcons.circle;
                              p3 = FontAwesomeIcons.circle;
                              p4 = FontAwesomeIcons.dotCircle;
                              p5 = FontAwesomeIcons.circle;
                            });
                          },
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(
                                    p4,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.ccAmazonPay,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  Text(
                                    '  Amazon Pay  ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Courgette',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              p1 = FontAwesomeIcons.circle;
                              p2 = FontAwesomeIcons.circle;
                              p3 = FontAwesomeIcons.circle;
                              p4 = FontAwesomeIcons.circle;
                              p5 = FontAwesomeIcons.dotCircle;
                            });
                          },
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(
                                    p5,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.google,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  Text(
                                    '  Google Pay  ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Courgette',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
