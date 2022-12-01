import 'dart:convert';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traveling/otherscreen/bhavnagar.dart';

import 'package:traveling/tabs/place.dart';
import 'package:badges/badges.dart';

class letsgo extends StatefulWidget {
  String loginname = '';
  letsgo({super.key, required this.loginname});

  @override
  State<letsgo> createState() => _letsgoState();
}

class _letsgoState extends State<letsgo> {
  int _currentIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: Icon(
          Icons.menu_sharp,
          color: Colors.black,
          size: 40,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 20, bottom: 30),
            child: Badge(
              badgeContent: Text('5'),
              child: Icon(
                Icons.person_pin_sharp,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
        elevation: 0,
        centerTitle: true,
        title: Text(
          "DisCover",
          style: GoogleFonts.robotoSlab(
            color: Color.fromARGB(255, 0, 0, 0),
            textStyle: Theme.of(context).textTheme.headline6,
            fontSize: 25,
            letterSpacing: 10,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            firstpage(sendname: widget.loginname),
            Gallery(),
            Container(
              child: Image.network(
                'https://previews.123rf.com/images/nalinn/nalinn1504/nalinn150401764/38910765-website-under-construction-black-and-white-background-image-landing-page-with-a-working-man.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              child: Image.network(
                'https://previews.123rf.com/images/nalinn/nalinn1504/nalinn150401764/38910765-website-under-construction-black-and-white-background-image-landing-page-with-a-working-man.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        //iconSize: 28,
        itemCornerRadius: 20,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        animationDuration: Duration(milliseconds: 520),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              textAlign: TextAlign.center,
              activeColor: Color.fromARGB(255, 21, 26, 43),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              icon: Icon(
                Icons.home,
                color: Colors.black,
              )),
          BottomNavyBarItem(
              textAlign: TextAlign.center,
              activeColor: Color.fromARGB(255, 21, 26, 43),
              title: Text(
                'Gallry',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              icon: Icon(
                Icons.apps,
                color: Colors.black,
              )),
          BottomNavyBarItem(
              textAlign: TextAlign.center,
              activeColor: Color.fromARGB(255, 21, 26, 43),
              title: Text(
                'Messeges',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              icon: Icon(
                Icons.chat_bubble,
                color: Colors.black,
              )),
          BottomNavyBarItem(
              activeColor: Color.fromARGB(255, 21, 26, 43),
              textAlign: TextAlign.center,
              title: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}

class firstpage extends StatelessWidget {
  var sendname = '';
  firstpage({Key? key, required this.sendname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
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
                          image: NetworkImage(
                              "https://www.planetware.com/wpimages/2020/03/best-places-to-visit-in-summer-maldives.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: AssetImage('assets/bg1 (1).jpg'),
                              fit: BoxFit.cover),
                        )),

                    //3rd Image of Slider
                    Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: AssetImage('assets/bg1 (3).jpg'),
                              fit: BoxFit.cover),
                        )),

                    //5th Image of Slider
                    Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: AssetImage('assets/bg1 (2).jpg'),
                              fit: BoxFit.cover),
                        )),
                    //4th Image of Slider
                    Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: AssetImage('assets/bg1 (3).jpg'),
                              fit: BoxFit.cover),
                        )),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 220.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.ease,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ],
            ),
            DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          labelColor: Color.fromARGB(255, 27, 34, 75),
                          unselectedLabelColor:
                              Color.fromARGB(173, 140, 140, 140),
                          // indicatorColor: Color.fromARGB(255, 0, 110, 255),
                          automaticIndicatorColorAdjustment: true,
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          isScrollable: true,

                          tabs: [
                            Tab(
                                child: Row(
                              children: [
                                Icon(Icons.place),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Place'),
                              ],
                            )),
                            Tab(
                                child: Row(
                              children: [
                                Icon(Icons.visibility),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Most Visited'),
                              ],
                            )),
                            Tab(
                                child: Row(
                              children: [
                                Icon(Icons.location_city),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Bhavnagar'),
                              ],
                            )),
                          ],
                        ),
                      ),
                      Container(
                          height: 400, //height of TabBarView
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            place(),
                            Container(
                              child: Center(
                                  child: Image.network(
                                      'https://img.freepik.com/premium-vector/website-construction-page-work-progress-man-repare-home-page-internet-illustration-cartoon-style_277904-1823.jpg?w=2000')),
                            ),
                            bhavnagar(namee: sendname),
                          ]))
                    ])),
          ],
        ),
      ),
    );
  }
}

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List imageurl = [
    'https://media.easemytrip.com/media/Blog/International/637867579316652136/637867579316652136pUfqUI.jpg',
    'https://media.easemytrip.com/media/Blog/International/637867579316652136/637867579316652136pUfqUI.jpg',
    'https://media.easemytrip.com/media/Blog/International/637867579316652136/637867579316652136pUfqUI.jpg',
    'https://media.easemytrip.com/media/Blog/International/637867579316652136/637867579316652136pUfqUI.jpg',
    'https://media.easemytrip.com/media/Blog/International/637867579316652136/637867579316652136pUfqUI.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
          itemCount: 10,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Image(
                    image:
                        NetworkImage('${imageurl[index % imageurl.length]}'));
              },
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 225, 224, 224)),
                child: Image.network(
                  '${imageurl[index % imageurl.length]}',
                  height: 30,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        ));
  }
}
