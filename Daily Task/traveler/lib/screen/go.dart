import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:marquee/marquee.dart';

class bhavnagar extends StatefulWidget {
  var name;

  bhavnagar({super.key, @required this.name});

  @override
  State<bhavnagar> createState() => bhavnagarState();
}

class bhavnagarState extends State<bhavnagar> {
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60,
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
                  "${widget.name}",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 147, 88, 16)),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  'assets/underline.png',
                  height: 80,
                  color: Colors.brown,
                ),
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
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  CarouselSlider(
                    items: [
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/veraval.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/pichal.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/wwe.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/hotes.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("assets/pichal.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height / 4.1,
                      width: MediaQuery.of(context).size.height / 4.8,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(233, 148, 148, 148),
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
                              height: MediaQuery.of(context).size.height / 5,
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
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.height / 4.8,
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
                            height: MediaQuery.of(context).size.height / 7.2,
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
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.height / 4.8,
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
                            height: MediaQuery.of(context).size.height / 6.2,
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
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.height / 4.8,
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
                            height: MediaQuery.of(context).size.height / 5,
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
