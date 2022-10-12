import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  bottom({Key? key}) : super(key: key);

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int selectindex = 0;
  List<Widget> mywidgetlist = [
    Text(
      "home",
      style: TextStyle(fontSize: 20),
    ),
    Text(
      "person",
      style: TextStyle(fontSize: 20),
    ),
  ];
  void onTapchange(int index) {
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: mywidgetlist.elementAt(selectindex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
        backgroundColor: Colors.amber,
        elevation: 60,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectindex,
        onTap: onTapchange,
      ),
    );
  }
}
