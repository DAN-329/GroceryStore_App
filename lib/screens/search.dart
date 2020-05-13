import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slnproject/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slnproject/reusable/drawer.dart';
import 'package:slnproject/items/search_items.dart';

SearchItems searchItems = SearchItems();

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String searchValue;
  Widget requiredItem;
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
            image: AssetImage("images/vegetables.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        //child: widget.enteredWidget,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                onChanged: (value) {
                  searchValue = value.toString();
                  print(searchValue);
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(
                    FontAwesomeIcons.search,
                    color: Colors.orange,
                    size: 40,
                  ),
                  hintText: 'Enter product',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  requiredItem = searchItems.FindItem(searchValue);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return requiredItem;
                    }),
                  );
                });
              },
              child: Card(
                color: Colors.orange,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Get Item',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Kaushan',
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
