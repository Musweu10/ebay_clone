import 'package:ebay_clone/screens/home_screen.dart';
import 'package:ebay_clone/screens/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class TheAppBar extends StatefulWidget {
  @override
  _TheAppBar createState() => _TheAppBar();
}

class _TheAppBar extends State<TheAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // here the desired height
        child: AppBar(
          shadowColor: Colors.transparent,
          title: Text(
            "Ebay",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Mdi.cartOutline,
                size: 35,
              ),
              onPressed: () {},
            ),
          ],
          // bottom: PreferredSize(
          //   child:
          //   preferredSize: Size.fromHeight(10.0),
          // ),
        ),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: HomeScreen(),
    );
  }
}
