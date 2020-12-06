import 'package:ebay_clone/screens/appbar_section.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class TheSplashScreen extends StatefulWidget {
  @override
  _TheSplashScreen createState() => new _TheSplashScreen();
}

class _TheSplashScreen extends State<TheSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new TheAppBar(),
      title: new Text(
        'ebay',
        style: new TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 70.0,
        ),
      ),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}
