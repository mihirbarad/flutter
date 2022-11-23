import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Manali extends StatefulWidget {
  const Manali({super.key});

  @override
  State<Manali> createState() => _ManaliState();
}

class _ManaliState extends State<Manali> {
  @override
  List imageurl = [
    'https://www.oyorooms.com/travel-guide/wp-content/uploads/2019/11/Top-4-Indian-skiing-destinations-Solang-1280x720.webp',
    'https://www.oyorooms.com/travel-guide/wp-content/uploads/2019/11/Top-4-Indian-skiing-destinations-Solang-1280x720.webp',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(right: 180),
              //   child: Text(
              //     "Welcome     \n \t\tto  \t\t  \n Manali",
              //     style: TextStyle(
              //       fontSize: 35,
              //       fontWeight: FontWeight.bold,
              //       color: Color.fromARGB(255, 11, 9, 61),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: NeumorphicText(
                  "Welcome\n to \nManali",
                  style: NeumorphicStyle(
                    depth: 100, //customize depth here
                    color:
                        Color.fromARGB(255, 11, 47, 98), //customize color here
                  ),
                  textStyle: NeumorphicTextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 50, //customize size here
                    // AND others usual text style properties (fontFamily, fontWeight, ...)
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 2.0,
                    initialPage: 2,
                  ),
                  itemCount: imageurl.length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(imageurl[itemIndex]),
                              fit: BoxFit.cover,
                            ),
                          ))),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 3,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150)),
                        child: Column(
                          children: [
                            Image.asset('assets/history .png',
                                height: MediaQuery.of(context).size.height / 6),
                            Text(
                              "History",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )),
                    Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 3,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150)),
                        child: Column(
                          children: [
                            Image.asset('assets/hotels.png',
                                height: MediaQuery.of(context).size.height / 6),
                            Text(
                              "Hotels",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )),
                    Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 3,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150)),
                        child: Column(
                          children: [
                            Image.asset('assets/restoo.png',
                                height: MediaQuery.of(context).size.height / 6),
                            Text(
                              "Restorant",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
