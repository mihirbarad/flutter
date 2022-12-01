import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:traveling/main.dart';

class Hotels extends StatefulWidget {
  const Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  String? _chosenValue;
  List imageurl = [
    'https://cdn1.goibibo.com/voy_ing/t_g/dd45a53ee8cf11e4a6e132e76f7e45c9.jfif',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 239, 239),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 35,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.feedback_outlined,
                        size: 30,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/building.png',
                  height: 200,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h, bottom: 1.5.h),
                  child: Column(
                    children: [
                      Text(
                        "Find Rooms",
                        style: GoogleFonts.concertOne(
                            fontStyle: FontStyle.normal,
                            fontSize: 38,
                            color: Color.fromARGB(255, 4, 13, 60)),
                      ),
                      SizedBox(
                        height: 0.7.h,
                      ),
                      Text(
                        "Eat Sleep and enjoy",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            color: Color.fromARGB(255, 4, 13, 60)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(2.h),
              //margin: EdgeInsets.all(1.h),
              child: TextField(
                cursorColor: Color.fromARGB(255, 162, 161, 161),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    prefixIcon: Container(
                      padding: EdgeInsets.all(15),
                      child: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 12, 74, 124),
                      ),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 27.h),
              child: DropdownButton<String>(
                value: _chosenValue,
                //elevation: 5,
                style: TextStyle(
                    color: Color.fromARGB(255, 10, 5, 60),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),

                items: <String>[
                  'Top',
                  'Recommed',
                  'High Price',
                  'Low  Price',
                  'High Rating',
                  'Low Rating',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                hint: Text(
                  "Select ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                onChanged: (String? value) {
                  setState(() {
                    print(value);
                    _chosenValue = value;
                  });
                },
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: imageurl.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(5.h),
                  margin: EdgeInsets.all(0.2.h),
                  decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 10),
                          blurRadius: 30,
                          spreadRadius: 1,
                        ),
                        const BoxShadow(
                          color: Colors.white12,
                          offset: Offset(-10, -10),
                          blurRadius: 30,
                          spreadRadius: 2,
                        ),
                      ],
                      color: Color.fromARGB(255, 241, 239, 239),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Image.network(
                        '${imageurl[index]}',
                        fit: BoxFit.fitHeight,
                        height: 50,
                      ),
                      Text("Commming Soon", style: TextStyle(fontSize: 25))
                    ],
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
