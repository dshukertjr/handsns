import 'package:flutter/material.dart';
import 'package:handsns/view/pages/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poke Snap',
      theme: ThemeData(
        primaryColor: Color(0xff45bea2),
        accentColor: Color(0xff83cda9),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

