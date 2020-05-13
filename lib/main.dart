import 'package:flutter/material.dart';
import 'screens/bestseller.dart';
import 'screens/profile.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        '/home': (context) => BestSeller(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
