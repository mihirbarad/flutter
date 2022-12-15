import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:topsBudget/Homepage.dart';

import 'package:topsBudget/expencescen.dart';
import 'package:topsBudget/income.dart';

class stetic extends StatefulWidget {
  var income;
  var expenceMoney;
  double? percentage;
  stetic(
      {super.key,
      @required this.income,
      @required this.expenceMoney,
      @required this.percentage});

  @override
  State<stetic> createState() => _steticState();
}

class _steticState extends State<stetic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 8.h,
              width: 80.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 218, 200, 147)),
              child: Center(
                  child: Text(
                "Your Expence and Income",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 95, 75, 15),
                ),
              )),
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              width: 50.w,
              child: CircleProgressBar(
                reversedDirection: false,
                strokeWidth: 6.0,
                animationDuration: Duration(milliseconds: 1000),
                foregroundColor: Colors.white54,
                backgroundColor: Color.fromARGB(255, 85, 98, 87),
                value: widget.percentage = widget.expenceMoney / widget.income,
                child: Center(
                  child: AnimatedCount(
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 95, 75, 15),
                    ),
                    unit: '',
                    count: widget.expenceMoney.toDouble(),
                    duration: Duration(milliseconds: 500),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your Income  Is    :₹${widget.income}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 95, 75, 15),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Your Expense Is :    ₹${widget.expenceMoney}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 95, 75, 15),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Your Ratio Is :       ₹${widget.percentage}%",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 95, 75, 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Homepage(),
                          ));
                    },
                    icon: Icon(
                      Icons.home,
                      size: 40.sp,
                      color: Color.fromARGB(255, 95, 75, 15),
                    ))),
          ],
        ),
      ),
    );
  }
}
