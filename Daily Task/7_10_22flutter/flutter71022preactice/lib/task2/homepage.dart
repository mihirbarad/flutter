import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter71022preactice/task2/itemscreens/italian.dart';

class homepages extends StatefulWidget {
  homepages({Key? key}) : super(key: key);

  @override
  State<homepages> createState() => _homepagesState();
}

class _homepagesState extends State<homepages> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                    //1st Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201708/dish-story_647_081417052301.jpg"),
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
                          image: NetworkImage(
                              "https://d4t7t8y8xqo0t.cloudfront.net/resized/750X436/eazytrendz%2F3070%2Ftrend20210218124824.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.cnn.com/cnnnext/dam/assets/160929101749-essential-spanish-dish-paella-phaidon-full-169.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://loveincorporated.blob.core.windows.net/contentimages/gallery/d9e900e4-212e-4c3d-96d5-cb14a023c659-worlds-most-delicious-dishes.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //5th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://www.eatthis.com/wp-content/uploads/sites/4/2020/01/chicken-tikka-masala.jpg?quality=82&strip=1"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                  //Slider Container properties
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
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  //add prefix icon
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 189, 128, 93),
                  ),

                  labelText: 'Serach Food',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 115, 68, 40),
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 173, 68, 7), width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.grey,
                ),
              ),
            ),
            horizantalline(),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 240, 239),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.network(
                'https://cdn.grabon.in/gograbon/images/category/1546252575451.png',
                height: 230,
              ),
            ),
            horizantalline1(),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView horizantalline() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => italian()));
            },
            child: Container(
              height: 190,
              width: 160,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 240, 239),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'asset/pngwing.com.png',
                    height: 150,
                  ),
                  Text(
                    "Italian ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 164, 66, 8)),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 190,
            width: 160,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 239),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/chines.png',
                  height: 150,
                ),
                Text(
                  "chinese",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 164, 66, 8)),
                )
              ],
            ),
          ),
          Container(
            height: 190,
            width: 160,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 239),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/pngwing.com (1).png',
                  height: 150,
                ),
                Text(
                  "Non-Veg",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 164, 66, 8)),
                )
              ],
            ),
          ),
          Container(
            height: 190,
            width: 160,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 239),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/pngwing.com (2).png',
                  height: 150,
                ),
                Text(
                  "Fast-Food",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 164, 66, 8)),
                )
              ],
            ),
          ),
          Container(
            height: 190,
            width: 160,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 239),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/pngwing.com (4).png',
                  height: 150,
                ),
                Text(
                  "Gujarati",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 164, 66, 8)),
                )
              ],
            ),
          ),
          Container(
            height: 190,
            width: 160,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 239),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/pngwing.com (3).png',
                  height: 150,
                ),
                Text(
                  "French Fires",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 164, 66, 8)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView horizantalline1() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 190,
            width: 160,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 239),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/pngwing.com.png',
                  height: 150,
                ),
                Text(
                  "Italian ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 164, 66, 8)),
                )
              ],
            ),
          ),
          Container(
            height: 190,
            width: 160,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 239),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/chines.png',
                  height: 150,
                ),
                Text(
                  "chinese",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 164, 66, 8)),
                )
              ],
            ),
          ),
          Container(
            height: 190,
            width: 160,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 239),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/pngwing.com (1).png',
                  height: 150,
                ),
                Text(
                  "Non-Veg",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 164, 66, 8)),
                )
              ],
            ),
          ),
          Container(
            height: 190,
            width: 160,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 239),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/pngwing.com (2).png',
                  height: 150,
                ),
                Text(
                  "Fast-Food",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 164, 66, 8)),
                )
              ],
            ),
          ),
          Container(
            height: 190,
            width: 160,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 239),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/pngwing.com (4).png',
                  height: 150,
                ),
                Text(
                  "Gujarati",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 164, 66, 8)),
                )
              ],
            ),
          ),
          Container(
            height: 190,
            width: 160,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 240, 239),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/pngwing.com (3).png',
                  height: 150,
                ),
                Text(
                  "French Fires",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 164, 66, 8)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
