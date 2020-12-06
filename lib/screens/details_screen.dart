import 'package:ebay_clone/constants/constants.dart';
import 'package:ebay_clone/models/Product.dart';
import 'package:ebay_clone/screens/main_drawer.dart';
import 'package:ebay_clone/widgets/mainscreen_items.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Item"),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.search, size: 35),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share, size: 30),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Mdi.cartOutline, size: 35),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, size: 30),
            onPressed: () {},
          )
        ],
      ),
      // each product has a color
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width / 1,
                  color: Colors.grey[200],
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                // IconButton(icon: Icon(Icons.favorite_border), onPressed:(){}),
                Positioned(
                    bottom: MediaQuery.of(context).size.height / 40,
                    left: MediaQuery.of(context).size.width / 1.2,
                    // bottom: 100,
                    // left: 250,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.blue,
                          ),
                          onPressed: () {}),
                    )),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                product.description2,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star_half),
                  SizedBox(width: 10),
                  Text("(49)", style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        // TextSpan(text: "Price\n"),
                        TextSpan(
                          text: "US \$${product.price}",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text("+ US \$21.00 postage",
                    style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(width: 8),
            Container(
              margin: EdgeInsets.only(right: 150),
              child: Text("Est. delivery Fri, 8 Jan - Fri,12 Feb",
                  style: TextStyle(color: Colors.grey[700])),
            ),
            SizedBox(width: 10),
            Divider(
              thickness: 2,
              indent: 15,
              endIndent: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: Text(
                  "100% buyer satisfaction",
                  style: TextStyle(fontWeight: FontWeight.w600),
                )),
                Container(
                    margin: EdgeInsets.only(right: 65),
                    width: 20,
                    height: 30,
                    // color: Colors.red,
                    child: VerticalDivider(width: 10, thickness: 1)),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(
                    right: 20,
                  ),
                  child: Text(
                    "34 sold",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2,
              indent: 15,
              endIndent: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: Text(
                  "Quantity\n 12+ available",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontFamily: "Montserrat"),
                )),
                Container(
                  // color: Colors.red,
                  height: 40,
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: '1',
                        labelStyle: TextStyle(color: Colors.black),
                        suffixIcon: IconButton(
                            icon: Icon(Icons.arrow_drop_down),
                            onPressed: () {}),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            //BUTTON 1
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Text(
                "Buy it now",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.blueAccent,
            ),
            SizedBox(height: 10),
            //BUTTON 2
            OutlineButton(
              borderSide: BorderSide(color: Colors.blue, width: 2),
              padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Text(
                "Add to basket",
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            //BUTTON 3
            OutlineButton(
              borderSide: BorderSide(color: Colors.blue, width: 2),
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 13),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Container(
                width: 170,
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 3),
                    Text(
                      "Watch this item",
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // SizedBox(
          //   height: size.height,
          //   child: Stack(
          //     children: <Widget>[
          //       Container(
          //         margin: EdgeInsets.only(top: size.height * 0.3),
          //         padding: EdgeInsets.only(
          //           top: size.height * 0.12,
          //           left: kDefaultPaddin,
          //           right: kDefaultPaddin,
          //         ),
          //         // height: 500,
          //         decoration: BoxDecoration(
          //           color: Colors.red,
          //           borderRadius: BorderRadius.only(
          //             topLeft: Radius.circular(24),
          //             topRight: Radius.circular(24),
          //           ),
          //         ),
          //         // child: Column(
          //         //   children: <Widget>[
          //         //     ColorAndSize(product: product),
          //         //     SizedBox(height: kDefaultPaddin / 2),
          //         //     Description(product: product),
          //         //     SizedBox(height: kDefaultPaddin / 2),
          //         //     CounterWithFavBtn(),
          //         //     SizedBox(height: kDefaultPaddin / 2),
          //         //     AddToCart(product: product)
          //         //   ],
          //         // ),
          //       ),
          //       // ProductTitleWithImage(product: product)
          //     ],
          //   ),
          // )
          ProductTitleWithImage(product: product)
        ],
      ),
    );
  }
}
