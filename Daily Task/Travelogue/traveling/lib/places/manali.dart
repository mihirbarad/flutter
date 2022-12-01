import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:traveling/places/histrycard.dart';
import 'package:traveling/places/hotels.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Manali extends StatefulWidget {
  const Manali({super.key});

  @override
  State<Manali> createState() => _ManaliState();
}

class _ManaliState extends State<Manali> {
  bool isVisibal = true;
  @override
  List imageurl = [
    'https://www.oyorooms.com/travel-guide/wp-content/uploads/2019/11/Top-4-Indian-skiing-destinations-Solang-1280x720.webp',
    'https://himachaltourism.gov.in/wp-content/uploads/2019/04/Solang-Valley-Manali.jpg',
    'https://assets-news.housing.com/news/wp-content/uploads/2022/07/15031416/manali-feature-compressed.jpg',
    'https://www.clubmahindra.com/blog/media/section_images/howtoreach-3fc5b29aeb2ca85.jpg',
    'https://images.hindustantimes.com/img/2022/09/22/550x309/1468bd10-3a69-11ed-8cba-ba7ad76ffd07_1663849211264.jpg',
    'https://assets.traveltriangle.com/blog/wp-content/uploads/2017/12/76.jpg',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 55.h,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 16, 92, 111),
                          Color.fromARGB(255, 9, 43, 145),
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.repeated),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 6.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40.h),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Color.fromARGB(255, 166, 206, 239),
                            size: 40,
                          )),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: NeumorphicText(
                        duration: Duration(milliseconds: 1000),
                        "Welcome\n to \nManali",
                        style: NeumorphicStyle(
                          depth: 10, //customize depth here
                          color: Color.fromARGB(
                              224, 226, 227, 227), //customize color here
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: history(),
                                    inheritTheme: true,
                                    ctx: context),
                              );
                            },
                            child: Container(
                                height: MediaQuery.of(context).size.height / 5,
                                width: MediaQuery.of(context).size.width / 4,
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(150)),
                                child: Column(
                                  children: [
                                    Image.asset('assets/history .png',
                                        height: 80),
                                    Text(
                                      "History",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 1000),
                                    child: Hotels(),
                                    inheritTheme: false,
                                    ctx: context),
                              );
                            },
                            child: Container(
                                height: MediaQuery.of(context).size.height / 5,
                                width: MediaQuery.of(context).size.width / 4,
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(150)),
                                child: Column(
                                  children: [
                                    Image.asset('assets/hotels.png',
                                        height: 80),
                                    Text(
                                      "Hotels",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height / 5,
                              width: MediaQuery.of(context).size.width / 4,
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(150)),
                              child: Column(
                                children: [
                                  Image.asset('assets/restoo.png', height: 80),
                                  Text(
                                    "Restorant",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                              height: MediaQuery.of(context).size.height / 5,
                              width: MediaQuery.of(context).size.width / 4,
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(150)),
                              child: Column(
                                children: [
                                  Image.asset('assets/hospital.png',
                                      height: 80),
                                  Text(
                                    "Hospital",
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
                    Visibility(
                      visible: isVisibal,
                      child: Container(
                        height: 25.h,
                        width: 45.h,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 227, 232, 255),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Book Your Tour",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 6, 59, 102)),
                            ),
                            Text(
                              "________________________________________",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 6, 59, 102)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/plien.png',
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/taxi.png',
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  'assets/bus.png',
                                  height: 20,
                                ),
                              ],
                            ),
                            SizedBox(height: 2.5.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Book"),
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(120, 45),
                                    primary: Color.fromARGB(255, 22, 138, 196),
                                    // side: BorderSide(
                                    //     color: Color.fromARGB(255, 6, 136, 197), width: 2),
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontStyle: FontStyle.normal),
                                    shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6))),
                                    shadowColor:
                                        Color.fromARGB(255, 6, 136, 197),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisibal = false;
                                    });
                                  },
                                  child: Text("Close"),
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(120, 45),
                                    primary: Color.fromARGB(255, 22, 138, 196),
                                    // side: BorderSide(
                                    //     color: Color.fromARGB(255, 6, 136, 197), width: 2),
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontStyle: FontStyle.normal),
                                    shape: BeveledRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6))),
                                    shadowColor:
                                        Color.fromARGB(255, 6, 136, 197),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
