import 'package:ebay_clone/constants/constants.dart';
import 'package:ebay_clone/models/Product.dart';
import 'package:ebay_clone/screens/details_screen.dart';
import 'package:ebay_clone/screens/recently_viewed_screen.dart';
import 'package:flutter/material.dart';

import 'itemscard.dart';

class MainScreenItems extends StatefulWidget {
  @override
  _MainScreenItemsState createState() => _MainScreenItemsState();
}

class _MainScreenItemsState extends State<MainScreenItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RcentlyViewedScreen()),
              );
            },
            child: Container(
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Your Recently Viewed Items",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: MediaQuery.of(context).size.height / 2.7,
            margin: EdgeInsets.only(top: 12),
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: GridView.builder(
                  padding: EdgeInsets.only(
                    // bottom: 10,
                    top: 5,
                    left: 10,
                    right: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 9 / 4,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                        product: products[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                product: products[index],
                              ),
                            )),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}

class MainScreenItems2 extends StatefulWidget {
  @override
  _MainScreenItems2State createState() => _MainScreenItems2State();
}

class _MainScreenItems2State extends State<MainScreenItems2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Pick of the day",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: MediaQuery.of(context).size.height / 2.7,

            margin: EdgeInsets.only(top: 12),
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: GridView.builder(
                  padding: EdgeInsets.only(
                    // bottom: 10,
                    top: 5,
                    left: 10,
                    right: 10,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 9 / 4,
                  ),
                  itemBuilder: (context, index) => ItemCard2(
                        product2: product2[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                product: product2[index],
                              ),
                            )),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}

class MainScreenItems3 extends StatefulWidget {
  @override
  _MainScreenItems3State createState() => _MainScreenItems3State();
}

class _MainScreenItems3State extends State<MainScreenItems3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              // color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Explore Popular Categories",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height:
                MediaQuery.of(context).size.height / 2.3, //Original  is/ 2.3

            margin: EdgeInsets.only(top: 12),
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: GridView.builder(
                  padding: EdgeInsets.only(
                    // bottom: 10,
                    top: 5,
                    left: 10,
                    right: 10,
                  ),
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 4 / 5.7, //Original  is 4 / 5.7
                  ),
                  itemBuilder: (context, index) => ItemCard3(
                        product3: product3[index],
                        // press: () => Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => DetailsScreen(
                        //         product: products[index],
                        //       ),
                        //     )),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
