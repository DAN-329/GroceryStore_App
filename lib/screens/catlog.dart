import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slnproject/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slnproject/reusable/drawer.dart';
import 'package:slnproject/catalog_home.dart';

class Catalog extends StatefulWidget {
  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CatalogHome(
                      num: 0,
                    );
                  }));
                },
                child: Card(
                  elevation: 20,
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.carrot,
                          size: 60,
                          color: Colors.white,
                        ),
                        Text(
                          'Vegggies',
                          style: kAdvertisement,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CatalogHome(
                      num: 1,
                    );
                  }));
                },
                child: Card(
                  elevation: 20,
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.drumstickBite,
                          size: 60,
                          color: Colors.white,
                        ),
                        Text(
                          '   Meats  ',
                          style: kAdvertisement,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CatalogHome(
                      num: 2,
                    );
                  }));
                },
                child: Card(
                  elevation: 20,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.cheese,
                          size: 60,
                          color: Colors.black,
                        ),
                        Text(
                          'Milk Products',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Kaushan',
                            letterSpacing: 2,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CatalogHome(
                      num: 3,
                    );
                  }));
                },
                child: Card(
                  elevation: 20,
                  color: Colors.orange,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.cookieBite,
                          size: 60,
                          color: Colors.white,
                        ),
                        Text(
                          '  Snacks  ',
                          style: kAdvertisement,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
