// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:traveler/screen/colors.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class history extends StatefulWidget {
//   const history({super.key});

//   @override
//   State<history> createState() => _historyState();
// }

// class _historyState extends State<history> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: ColorConstants.kPrimaryColor,
//         systemOverlayStyle: SystemUiOverlayStyle.light,
//         toolbarHeight: 80,
//         titleSpacing: 0.8,
//         centerTitle: false,
//         title: Text("History Of Bhavnagar"),
//         elevation: 50,
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//           children: [
//             // ListView(
//             //   scrollDirection: Axis.vertical,
//             //   shrinkWrap: true,
//             //   children: [
//             //     CarouselSlider(
//             //       items: [
//             //         Container(
//             //           margin: EdgeInsets.all(6.0),
//             //           decoration: BoxDecoration(
//             //             borderRadius: BorderRadius.circular(8.0),
//             //             image: DecorationImage(
//             //               image: AssetImage("assets/veraval.jpg"),
//             //               fit: BoxFit.cover,
//             //             ),
//             //           ),
//             //         ),
//             //         Container(
//             //           margin: EdgeInsets.all(6.0),
//             //           decoration: BoxDecoration(
//             //             borderRadius: BorderRadius.circular(8.0),
//             //             image: DecorationImage(
//             //               image: AssetImage("assets/pichal.jpg"),
//             //               fit: BoxFit.cover,
//             //             ),
//             //           ),
//             //         ),
//             //         Container(
//             //           margin: EdgeInsets.all(6.0),
//             //           decoration: BoxDecoration(
//             //             borderRadius: BorderRadius.circular(8.0),
//             //             image: DecorationImage(
//             //               image: AssetImage("assets/wwe.jpeg"),
//             //               fit: BoxFit.cover,
//             //             ),
//             //           ),
//             //         ),
//             //         Container(
//             //           margin: EdgeInsets.all(6.0),
//             //           decoration: BoxDecoration(
//             //             borderRadius: BorderRadius.circular(8.0),
//             //             image: DecorationImage(
//             //               image: AssetImage("assets/hotes.png"),
//             //               fit: BoxFit.cover,
//             //             ),
//             //           ),
//             //         ),
//             //         Container(
//             //           margin: EdgeInsets.all(6.0),
//             //           decoration: BoxDecoration(
//             //             borderRadius: BorderRadius.circular(8.0),
//             //             image: DecorationImage(
//             //               image: AssetImage("assets/pichal.jpg"),
//             //               fit: BoxFit.cover,
//             //             ),
//             //           ),
//             //         ),
//             //       ],
//             //       options: CarouselOptions(
//             //         height: 180.0,
//             //         enlargeCenterPage: true,
//             //         autoPlay: true,
//             //         aspectRatio: 16 / 9,
//             //         autoPlayCurve: Curves.fastOutSlowIn,
//             //         enableInfiniteScroll: true,
//             //         autoPlayAnimationDuration: Duration(milliseconds: 800),
//             //         viewportFraction: 0.8,
//             //       ),
//             //     ),
//             //   ],
//             // ),

//             Image.asset(
//               "assets/BhavsinhjiIIPic.jpg",
//               height: MediaQuery.of(context).size.height / 2,
//             ),
//             Text("")
//           ],
//         ),
//       ),
//     );
//   }
// }
