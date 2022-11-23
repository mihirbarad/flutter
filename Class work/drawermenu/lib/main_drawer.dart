import 'package:drawermenu/home.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _homepageState();
}

enum DrawerSection { home, setting, profile }

var mainContainer;
var current_page = DrawerSection.home;

class _homepageState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Home(),
              Mymenulist(),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Text("My Drwer"),
      ),
    );
  }

  Widget Mymenulist() {
    return Container(
        child: Column(
      children: [
        mymenyItems(1, 'home', Icons.home, true),
        mymenyItems(1, 'setting', Icons.settings, true),
        mymenyItems(1, 'logout', Icons.login, true),
      ],
    ));
  }

  Widget mymenyItems(int id, String title, IconData iconname, bool isselected) {
    return Material(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(
              iconname,
              color: Colors.teal,
            ),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
