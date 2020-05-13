import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slnproject/constants.dart';
import 'package:slnproject/reusable/drawerpage.dart';
import 'package:slnproject/reusable/payments.dart';

class DrawerData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/drawer.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/profile.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Daniel Lester Saldanha',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/drawer.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DrawerPage(
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  color: Colors.black,
                                  child: Center(
                                    child: Text(
                                      'Your Order\'s',
                                      style: kAdvertisement,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 120,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.truck,
                                        color: Colors.black,
                                        size: 70,
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Container(
                                        color: Colors.white,
                                        child: Center(
                                          child: Text(
                                            'You Have No Pending Orders',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 40,
                                              fontFamily: 'Courgette',
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 200,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.black54,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.truck,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            'My Orders',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DrawerPage(
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  color: Colors.black,
                                  child: Center(
                                    child: Text(
                                      'Setting\'s',
                                      style: kAdvertisement,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 25,
                                      ),
                                      FlatButton(
                                        onPressed: () {},
                                        child: Container(
                                          width: double.infinity,
                                          child: Card(
                                            color: Colors.white,
                                            child: Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                'App Settings',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Courgette',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      FlatButton(
                                        onPressed: () {},
                                        child: Container(
                                          width: double.infinity,
                                          child: Card(
                                            color: Colors.white,
                                            child: Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                'Profile Settings',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Courgette',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      FlatButton(
                                        onPressed: () {},
                                        child: Container(
                                          width: double.infinity,
                                          child: Card(
                                            color: Colors.white,
                                            child: Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                'Delivery Location',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Courgette',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      FlatButton(
                                        onPressed: () {},
                                        child: Container(
                                          width: double.infinity,
                                          child: Card(
                                            color: Colors.white,
                                            child: Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                'Notifications',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Courgette',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      FlatButton(
                                        onPressed: () {},
                                        child: Container(
                                          width: double.infinity,
                                          child: Card(
                                            color: Colors.white,
                                            child: Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                'FAQ\'s',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Courgette',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      FlatButton(
                                        onPressed: () {},
                                        child: Container(
                                          width: double.infinity,
                                          child: Card(
                                            color: Colors.white,
                                            child: Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                'Terms and Conditions',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Courgette',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      FlatButton(
                                        onPressed: () {},
                                        child: Container(
                                          width: double.infinity,
                                          child: Card(
                                            color: Colors.white,
                                            child: Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Text(
                                                'Privacy Policy',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Courgette',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.black54,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.cog,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            'Settings',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DrawerPage(
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Container(
                                  color: Colors.black,
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Contact\'s',
                                      style: kAdvertisement,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Card(
                                        elevation: 10,
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Text(
                                            'Corporate Office :No. 1, Horizon Building, 3rd Floor, Pai Layout,Old Madras Road, Dooravaninagar Post,Bengaluru-560 016.INDIA',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontFamily: 'Courgette',
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Card(
                                        elevation: 10,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            'Director'
                                            'M Anil Kumar'
                                            'E-mail: anil@slntech.com'
                                            'D.R. Subramanyam'
                                            'E-mail: drs@slntech.com',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontFamily: 'Courgette',
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Card(
                                        elevation: 10,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            'Phone: +91-80-4171 8881 , 4171 8882'
                                            'Fax: +91-80-4171 8883'
                                            'Email: anil@slntech.com',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontFamily: 'Courgette',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.black54,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.mobile,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            'Contact Us',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return PaymentPage();
                        },
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.black54,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.moneyBill,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            'Payments',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DrawerPage(
                            content: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(15),
                                  color: Colors.black,
                                  child: Center(
                                    child: Text(
                                      'SLN Technologies ',
                                      style: kAdvertisement,
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.white,
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        color: Colors.white,
                                        child: Center(
                                          child: Text(
                                            'In an economy where the only certainty is uncertainty, the one sure source of lasting competitive advantage is knowledge. When markets shift, technologies proliferate, competitors multiply, and products become obsolete almost overnight, successful companies are those that consistently create new knowledge, disseminate it widely throughout the organization, and quickly embody it in new technologies and products.',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontFamily: 'Courgette',
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 70,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                  child: Card(
                    color: Colors.black54,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.users,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            'About Us',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 211),
              ],
            ),
          )
        ],
      ),
    );
  }
}
