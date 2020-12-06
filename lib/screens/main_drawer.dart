import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  Widget buildListTile(
      IconData icon, String title, String messages, Function tapHandler) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Text(messages),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.all(15),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.red,
              ),
              Container(
                padding: EdgeInsets.all(10),
                // margin: EdgeInsets.only(left: 10),
                child: Text(
                  "UserName",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          buildListTile(Icons.home, "Home", ".", () {}),
          buildListTile(Icons.notifications, "Notifications", ".", () {}),
          buildListTile(Icons.mail, "Messages", "20", () {}),
        ],
      ),
    );
  }
}
