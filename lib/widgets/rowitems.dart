import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

//PVCLTW
class RowCategories extends StatelessWidget {
  Widget categoryRowItems(String name, IconData icon) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
      ),
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.blue,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Text(
              name,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w700,
                fontSize: 19,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  categoryRowItems("Selling", Mdi.tagOutline),
                  categoryRowItems("Deals", Mdi.lightningBoltOutline),
                  categoryRowItems("Categories", Icons.category),
                  categoryRowItems("Saved", Icons.favorite_border),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
