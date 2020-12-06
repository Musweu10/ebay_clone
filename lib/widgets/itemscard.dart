import 'package:ebay_clone/constants/constants.dart';
import 'package:ebay_clone/models/Product.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: 260,
            child: Container(
              padding: EdgeInsets.all(15),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 10),
          //   child: Text(
          //     // products is out demo list
          //     product.title,
          //     style: TextStyle(color: kTextLightColor),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 6),
            child: Text(
              // products is out demo list
              product.description2,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

//The second category
class ItemCard2 extends StatelessWidget {
  final Product product2;
  final Function press;
  const ItemCard2({
    Key key,
    this.product2,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: 260,
            child: Container(
              padding: EdgeInsets.all(15),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product2.color,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Hero(
                tag: "${product2.id}",
                child: Image.asset(
                  product2.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 10),
          //   child: Text(
          //     // products is out demo list
          //     product2.title,
          //     style: TextStyle(color: kTextLightColor),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 6),
            child: Text(
              // products is out demo list
              product2.description2,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product2.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

//The Third category
class ItemCard3 extends StatelessWidget {
  final Product product3;
  final Function press;
  const ItemCard3({
    Key key,
    this.product3,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 7.5,
            width: double.maxFinite,
            child: Container(
              // padding: EdgeInsets.all(2),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                // color: product3.color,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Hero(
                tag: "${product3.id}",
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: CircleAvatar(
                      backgroundColor: product3.color,
                      child: Image.asset(
                        product3.image,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 10),
            child: Center(
              child: Text(
                // products is out demo list
                product3.title,
                style: TextStyle(
                  color: kTextLightColor,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//The Fourth category
class ItemCard4 extends StatelessWidget {
  final Product product4;
  final Function press;
  const ItemCard4({
    Key key,
    this.product4,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        // color: Colors.amber,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: 120,
              child: Container(
                padding: EdgeInsets.all(15),
                // For  demo we use fixed height  and width
                // Now we dont need them
                // height: 180,
                // width: 160,
                decoration: BoxDecoration(
                  color: product4.color,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Hero(
                  tag: "${product4.id}",
                  child: Image.asset(
                    product4.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 1.6,
              child: ListTile(
                title: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPaddin / 10),
                  child: Text(
                    // products is out demo list
                    product4.title,
                    style: TextStyle(color: kTextLightColor),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(product4.description4),
                    // Text("\$${product4.price}"),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: kDefaultPaddin / 6),
                      child: Text(
                        // products is out demo list
                        product4.description4,
                        style: TextStyle(color: kTextLightColor),
                      ),
                    ),
                    Text(
                      "US \$${product4.price}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            )
            // Column(
            //   children: [
            //     Padding(
            //       padding:
            //           const EdgeInsets.symmetric(vertical: kDefaultPaddin / 10),
            //       child: Text(
            //         // products is out demo list
            //         product2.title,
            //         style: TextStyle(color: kTextLightColor),
            //       ),
            //     ),
            //     Padding(
            //       padding:
            //           const EdgeInsets.symmetric(vertical: kDefaultPaddin / 6),
            //       child: Text(
            //         // products is out demo list
            //         product2.description2,
            //         style: TextStyle(color: kTextLightColor),
            //       ),
            //     ),
            //     Text(
            //       "\$${product2.price}",
            //       style: TextStyle(fontWeight: FontWeight.bold),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
