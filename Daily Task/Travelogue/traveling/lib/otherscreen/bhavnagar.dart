import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

import 'package:flutter/widgets.dart';

class bhavnagar extends StatefulWidget {
  var namee = '';

  bhavnagar({super.key, required this.namee});

  @override
  State<bhavnagar> createState() => bhavnagarState();
}

class bhavnagarState extends State<bhavnagar> {
  TextEditingController cityController = TextEditingController();
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      // drawer: Drawer(
      //   child: Column(
      //     children: <Widget>[
      //       Expanded(
      //         child: Column(
      //           children: [
      //             SizedBox(
      //               height: 120,
      //             ),
      //             Container(
      //               height: 50,
      //               width: MediaQuery.of(context).size.width / 1.5,
      //               decoration: BoxDecoration(
      //                   color: ColorConstants.kPrimaryColor,
      //                   borderRadius: BorderRadius.circular(50)),
      //               child: Center(
      //                 child: Text(
      //                   "ભાવ ભરિયુ  ભાવનગર",
      //                   style: TextStyle(
      //                       fontSize: 28,
      //                       color: Color.fromARGB(255, 255, 255, 255),
      //                       fontWeight: FontWeight.w700),
      //                 ),
      //               ),
      //             ),
      //             SizedBox(
      //               height: 50,
      //             ),
      //             ListTile(
      //               leading: Icon(
      //                 Icons.home,
      //                 color: Color.fromARGB(255, 196, 85, 20),
      //               ),
      //               title: Text(
      //                 "Home",
      //                 style: TextStyle(
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.bold,
      //                   color: Color.fromARGB(255, 196, 85, 20),
      //                 ),
      //               ),
      //               onTap: () {
      //                 Navigator.pop(context);
      //               },
      //             ),
      //             ListTile(
      //               leading: Icon(
      //                 Icons.wallet,
      //                 color: Color.fromARGB(255, 196, 85, 20),
      //               ),
      //               title: Text(
      //                 "wallet",
      //                 style: TextStyle(
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.bold,
      //                   color: Color.fromARGB(255, 196, 85, 20),
      //                 ),
      //               ),
      //               onTap: () {
      //                 Navigator.pop(context);
      //               },
      //             ),
      //             ListTile(
      //               leading: Icon(
      //                 Icons.contacts,
      //                 color: Color.fromARGB(255, 196, 85, 20),
      //               ),
      //               title: Text(
      //                 "Contact Us",
      //                 style: TextStyle(
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.bold,
      //                   color: Color.fromARGB(255, 196, 85, 20),
      //                 ),
      //               ),
      //               onTap: () {
      //                 Navigator.pop(context);
      //               },
      //             ),
      //             ListTile(
      //               leading: Icon(
      //                 Icons.offline_pin_sharp,
      //                 color: Color.fromARGB(255, 196, 85, 20),
      //               ),
      //               title: Text(
      //                 "Offer",
      //                 style: TextStyle(
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.bold,
      //                   color: Color.fromARGB(255, 196, 85, 20),
      //                 ),
      //               ),
      //               onTap: () {
      //                 Navigator.pop(context);
      //               },
      //             ),
      //             ListTile(
      //               leading: Icon(
      //                 Icons.question_mark,
      //                 color: Color.fromARGB(255, 196, 85, 20),
      //               ),
      //               title: Text(
      //                 "About us",
      //                 style: TextStyle(
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.bold,
      //                   color: Color.fromARGB(255, 196, 85, 20),
      //                 ),
      //               ),
      //               onTap: () {
      //                 Navigator.pop(context);
      //               },
      //             ),
      //             ListTile(
      //               leading: Icon(
      //                 Icons.card_giftcard_sharp,
      //                 color: Color.fromARGB(255, 196, 85, 20),
      //               ),
      //               title: Text(
      //                 "Refer and Earn",
      //                 style: TextStyle(
      //                   fontSize: 16,
      //                   fontWeight: FontWeight.bold,
      //                   color: Color.fromARGB(255, 196, 85, 20),
      //                 ),
      //               ),
      //               onTap: () {
      //                 Navigator.push(context,
      //                     MaterialPageRoute(builder: (context) => Share()));
      //               },
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //           child: Align(
      //               alignment: FractionalOffset.bottomCenter,
      //               child: Column(
      //                 children: <Widget>[
      //                   Divider(),
      //                   ListTile(
      //                       leading: Icon(
      //                         Icons.settings,
      //                         color: Color.fromARGB(255, 196, 85, 20),
      //                       ),
      //                       title: Text(
      //                         'Settings',
      //                         style: TextStyle(
      //                           fontSize: 16,
      //                           fontWeight: FontWeight.bold,
      //                           color: Color.fromARGB(255, 196, 85, 20),
      //                         ),
      //                       )),
      //                   ListTile(
      //                       leading: Icon(
      //                         Icons.logout,
      //                         color: Color.fromARGB(255, 196, 85, 20),
      //                       ),
      //                       title: Text(
      //                         'LogOut',
      //                         style: TextStyle(
      //                           fontWeight: FontWeight.bold,
      //                           color: Color.fromARGB(255, 196, 85, 20),
      //                         ),
      //                       ))
      //                 ],
      //               ))),
      //     ],
      //   ),
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome to Bhavnagar",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 147, 88, 16)),
              ),
              Container(
                child: Text(
                  "${widget.namee}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 147, 88, 16)),
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/desing.png',
                      height: 50,
                      color: Colors.brown,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/desing.png',
                      height: 50,
                      color: Colors.brown,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/desing.png',
                      height: 50,
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Image.asset(
                        'assets/desing.png',
                        height: 50,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.black),
                  child: Marquee(
                    text:
                        'ચૂંટણીમાં મતદાન નહી કરી શકનારા માટે સુવિધા ચૂંટણીના કામે રોકાયેલા કર્મચારીઓના મતદાન માટે માર્ગદર્શિકા, 10મી સુધી ફોર્મ જમા કરાવવાના રહેશે',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    blankSpace: 8.0,
                    velocity: 20.0,
                    pauseAfterRound: Duration(seconds: 1),
                    startPadding: 10.0,
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onDoubleTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => card(),
                      //     ));
                    },
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => history(),
                      //     ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 4.5,
                      width: MediaQuery.of(context).size.height / 4.5,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(233, 125, 124, 124),
                              blurRadius: 5.0,
                            ),
                          ],
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 240, 203, 159),
                              Color.fromARGB(255, 240, 203, 159),
                              Color.fromARGB(255, 237, 149, 40),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            tileMode: TileMode.repeated,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/history .png',
                              height: MediaQuery.of(context).size.height / 5.5,
                            ),
                            Text(
                              "History",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.brown),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => bestplace(),
                      //     ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 4.5,
                      width: MediaQuery.of(context).size.height / 4.5,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(233, 86, 86, 86),
                              blurRadius: 5.0,
                            ),
                          ],
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 240, 203, 159),
                              Color.fromARGB(255, 240, 203, 159),
                              Color.fromARGB(255, 237, 149, 40),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            tileMode: TileMode.repeated,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/place.png',
                              height: MediaQuery.of(context).size.height / 7.8,
                              color: Colors.brown,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Best Place",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.brown),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.height / 4.5,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(233, 84, 84, 84),
                            blurRadius: 5.0,
                          ),
                        ],
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 240, 203, 159),
                            Color.fromARGB(255, 240, 203, 159),
                            Color.fromARGB(255, 237, 149, 40),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          tileMode: TileMode.repeated,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/hotels.png',
                            height: MediaQuery.of(context).size.height / 6.5,
                            color: Colors.brown,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Hotels",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.brown),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 4.5,
                    width: MediaQuery.of(context).size.height / 4.5,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(233, 74, 148, 139),
                            blurRadius: 5.0,
                          ),
                        ],
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 240, 203, 159),
                            Color.fromARGB(255, 240, 203, 159),
                            Color.fromARGB(255, 237, 149, 40),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          tileMode: TileMode.repeated,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/restoo.png',
                            height: MediaQuery.of(context).size.height / 5.8,
                          ),
                          Text(
                            "Restaurants",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.brown),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       margin: EdgeInsets.all(10),
              //       height: MediaQuery.of(context).size.height / 4.1,
              //       width: MediaQuery.of(context).size.height / 4.8,
              //       decoration: BoxDecoration(
              //           color: Color.fromARGB(255, 110, 174, 226),
              //           borderRadius: BorderRadius.circular(20)),
              //       child: Center(
              //         child: Text(
              //           "Hotals",
              //           textAlign: TextAlign.center,
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //     ),
              //     Container(
              //       margin: EdgeInsets.all(10),
              //       height: MediaQuery.of(context).size.height / 4.1,
              //       width: MediaQuery.of(context).size.height / 4.8,
              //       decoration: BoxDecoration(
              //           color: Color.fromARGB(255, 110, 174, 226),
              //           borderRadius: BorderRadius.circular(20)),
              //       child: Center(
              //         child: Text(
              //           "Example",
              //           textAlign: TextAlign.center,
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
