import 'package:ebay_clone/widgets/mainscreen_items.dart';
import 'package:ebay_clone/widgets/rowitems.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
        
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Color(0xFFfefefe),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        color: Colors.grey[300],
                        // Color(0xFFEEEEEE),
                        height: 60,
                 
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            prefixIcon: IconButton(
                              icon: Icon(
                                Icons.search,
                                size: 35,
                              ),
                              onPressed: () {},
                            ),
                            suffixIcon: Container(
                              width: 120,
                             
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      print("Micophone");
                                    },
                                    icon: Icon(
                                      Mdi.microphoneOutline,
                                      size: 35,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      print("Camera");
                                    },
                                    icon: Icon(
                                      Mdi.cameraOutline,
                                      size: 35,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            hintText: "Search for anything",
                            hintStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 3,
                      ),
                      RowCategories(),
                    ],
                  ),
                ),
                MainScreenItems(),
                MainScreenItems2(),
                MainScreenItems3(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
