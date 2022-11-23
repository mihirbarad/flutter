// import 'package:flutter/material.dart';

// class CountDownTimer extends StatefulWidget {
//   @override
//   _CountDownTimerState createState() => _CountDownTimerState();
// }

// class _CountDownTimerState extends State<CountDownTimer>
//     with TickerProviderStateMixin {
//   late AnimationController controller;

//   String get timerString {
//     Duration duration = controller.duration! * controller.value;
//     return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
//   }

//   @override
//   void initState() {
//     super.initState();
//     controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 8),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     ThemeData themeData = Theme.of(context);
//     return Scaffold(
//       backgroundColor: Colors.white10,
//       body: AnimatedBuilder(
//           animation: controller,
//           builder: (context, child) {
//             return Stack(
//               children: <Widget>[
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Container(
//                     color: Colors.amber,
//                     height:
//                         controller.value * MediaQuery.of(context).size.height,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Expanded(
//                         child: Align(
//                           alignment: FractionalOffset.center,
//                           child: AspectRatio(
//                             aspectRatio: 1.0,
//                             child: Stack(
//                               children: <Widget>[
//                                 Align(
//                                   alignment: FractionalOffset.center,
//                                   child: Column(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       Text(
//                                         "Count Down Timer",
//                                         style: TextStyle(
//                                             fontSize: 20.0,
//                                             color: Colors.white),
//                                       ),
//                                       Text(
//                                         timerString,
//                                         style: TextStyle(
//                                             fontSize: 112.0,
//                                             color: Colors.white),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       // AnimatedBuilder(
//                       //     animation: controller,
//                       //     builder: (context, child) {
//                       //       return FloatingActionButton.extended(

//                       //               controller.stop();

//                       //           label: Text(
//                       //               controller.isAnimating ? "Pause" : "Play"));
//                       //     }),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           }),
//     );
//   }
// }

import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class MyWidget extends StatefulWidget {
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List _selectedIndexs = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (ctx, i) {
              final _isSelected = _selectedIndexs.contains(i);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (_isSelected) {
                      _selectedIndexs.remove(i);
                    } else {
                      _selectedIndexs.add(i);
                    }
                  });
                },
                child: Container(
                  color: _isSelected ? Colors.red : null,
                  child: ListTile(title: Text("Khadga")),
                ),
              );
            }),
      ),
    );
  }
}
