import 'package:ebay_clone/constants/constants.dart';
import 'package:ebay_clone/models/Product.dart';
import 'package:ebay_clone/screens/main_drawer.dart';
import 'package:ebay_clone/widgets/itemscard.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class RcentlyViewedScreen extends StatefulWidget {
  final Product product4;

  const RcentlyViewedScreen({Key key, this.product4}) : super(key: key);

  @override
  _RcentlyViewedScreenState createState() => _RcentlyViewedScreenState();
}

class _RcentlyViewedScreenState extends State<RcentlyViewedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text("Recently Viewed"),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Mdi.cartOutline,
                size: 30,
              ),
              onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 1,
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Expanded(
         
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: GridView.builder(
                    padding: EdgeInsets.only(
                
                      top: 5,
                      left: 1,
                      right: 1,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: kDefaultPaddin,
                      childAspectRatio: 10 / 3.7,
                    ),
                    itemBuilder: (context, index) => ItemCard4(
                          product4: product4[index],
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
      ),
    );
  }
}
