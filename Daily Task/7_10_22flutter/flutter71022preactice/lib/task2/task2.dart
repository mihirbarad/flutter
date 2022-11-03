import 'package:flutter/material.dart';
import 'package:flutter71022preactice/task2/foodmenu.dart';
import 'package:flutter71022preactice/task2/homepage.dart';
import 'package:flutter71022preactice/task2/itemscreens/messege.dart';
import 'package:flutter71022preactice/task2/itemscreens/referandearn.dart';
import 'package:flutter71022preactice/task2/profile.dart';

class task2 extends StatefulWidget {
  String? name;

  String? number;
  task2({Key? key, @required this.name, @required this.number})
      : super(key: key);

  @override
  State<task2> createState() => _task2State();
}

class _task2State extends State<task2> {
  int mihirindex = 0;
  List<Widget> mihirbarad = [
    homepages(),
    foodmenu(),
    profile(),
  ];

  void onChange(int index) {
    setState(() {
      mihirindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://static.vecteezy.com/system/resources/thumbnails/004/275/701/small/fast-food-seamless-background-illustration-simple-restaurant-menu-background-vector.jpg',
                            )),
                      ),
                      accountName: Text("${widget.name}",
                          style: TextStyle(
                              color: Color.fromARGB(255, 3, 4, 71),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      accountEmail: Text("${widget.number}",
                          style: TextStyle(
                              color: Color.fromARGB(255, 3, 4, 71),
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      currentAccountPicture: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          child: Icon(
                            Icons.person,
                            size: 45,
                          ))),
                  SizedBox(
                    height: 6,
                  ),
                  Image.asset('asset/happydiwali.png', height: 120),
                  SizedBox(
                    height: 6,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 196, 85, 20),
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 196, 85, 20),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.wallet,
                      color: Color.fromARGB(255, 196, 85, 20),
                    ),
                    title: Text(
                      "wallet",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 196, 85, 20),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.contacts,
                      color: Color.fromARGB(255, 196, 85, 20),
                    ),
                    title: Text(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 196, 85, 20),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.offline_pin_sharp,
                      color: Color.fromARGB(255, 196, 85, 20),
                    ),
                    title: Text(
                      "Offer",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 196, 85, 20),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.question_mark,
                      color: Color.fromARGB(255, 196, 85, 20),
                    ),
                    title: Text(
                      "About us",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 196, 85, 20),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.card_giftcard_sharp,
                      color: Color.fromARGB(255, 196, 85, 20),
                    ),
                    title: Text(
                      "Refer and Earn",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 196, 85, 20),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Share()));
                    },
                  ),
                ],
              ),
            ),
            Container(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Column(
                      children: <Widget>[
                        Divider(),
                        ListTile(
                            leading: Icon(
                              Icons.settings,
                              color: Color.fromARGB(255, 196, 85, 20),
                            ),
                            title: Text(
                              'Settings',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 196, 85, 20),
                              ),
                            )),
                        ListTile(
                            leading: Icon(
                              Icons.logout,
                              color: Color.fromARGB(255, 196, 85, 20),
                            ),
                            title: Text(
                              'LogOut',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 196, 85, 20),
                              ),
                            ))
                      ],
                    ))),
          ],
        ),
      ),
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       SizedBox(
      //         height: 50,
      //       ),
      //       Row(
      //         children: [
      //           Container(
      //             margin: EdgeInsets.all(20),
      //             child: CircleAvatar(
      //               backgroundImage: NetworkImage(
      //                   'https://th.bing.com/th/id/OIP.Gfp0lwE6h7139625a-r3aAHaHa?pid=ImgDet&rs=1'),
      //               backgroundColor: Color.fromARGB(255, 88, 40, 40),
      //               radius: 30,
      //             ),
      //           ),
      //           Column(
      //             children: [
      //               Container(
      //                 margin: EdgeInsets.only(),
      //                 child: Text(
      //                   "${widget.name}".toUpperCase(),
      //                   style: TextStyle(
      //                       color: Color.fromARGB(255, 133, 65, 26),
      //                       fontWeight: FontWeight.w600,
      //                       fontSize: 16),
      //                 ),
      //               ),
      //               Container(
      //                 child: Text(
      //                   "${widget.number}",
      //                   style: TextStyle(
      //                       fontWeight: FontWeight.w600, fontSize: 16),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
          title: Text("Yammies FoodZone",
              style: TextStyle(
                fontSize: 19,
              )),
          toolbarHeight: 70,
          actions: [
            Container(
                margin: EdgeInsets.all(20),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Messege()));
                    },
                    child: Icon(Icons.message)))
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 104, 73, 54),
                    Color.fromARGB(255, 196, 85, 20)
                  ]),
            ),
          )),
      body: Center(
        child: mihirbarad.elementAt(mihirindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Food Menu',
            icon: Icon(Icons.restaurant_menu_sharp),
          ),
          BottomNavigationBarItem(
            label: 'UPI',
            icon: Icon(Icons.account_balance_sharp),
          ),
        ],
        elevation: 60,
        currentIndex: mihirindex,
        fixedColor: Color.fromARGB(255, 196, 85, 20),
        onTap: onChange,
      ),
    );
  }
}
