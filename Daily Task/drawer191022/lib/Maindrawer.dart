import 'package:flutter/material.dart';

class maindrawer extends StatefulWidget {
  const maindrawer({super.key});

  @override
  State<maindrawer> createState() => maindrawerState();
}

enum dwaver { dashbord, contect, settings }

var mainContainer;
var current_page = dwaver.dashbord;

class maindrawerState extends State<maindrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Drawer Example"),
      ),
      body: mainContainer,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [maindrawer()],
          ),
        ),
      ),
    );
  }
}
