import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';
import 'package:topsBudget/Database/Service/myService.dart';
import 'package:topsBudget/Database/histryModel.dart';
import 'package:topsBudget/Database/incomeModel.dart';
import 'package:topsBudget/Homepage.dart';

class income extends StatefulWidget {
  const income({super.key});

  @override
  State<income> createState() => _incomeState();
}

class _incomeState extends State<income> {
  var MEthordController = TextEditingController();
  var titleController = TextEditingController();
  var IncomeController = TextEditingController();
  var _dateC = TextEditingController();
  var _timeC = TextEditingController();
  var check = 'true';

  ///Date
  DateTime selected = DateTime.now();
  DateTime initial = DateTime(2000);
  DateTime last = DateTime(2025);

  ///Time
  TimeOfDay timeOfDay = TimeOfDay.now();

  bool titleValidator = false;
  bool amountValidator = false;
  bool dateValidator = false;
  bool timeValidator = false;
  bool modeValidator = false;

  var _servies = Myservices();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 6.h,
            ),
            Text(
              "Income Details",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(248, 155, 134, 64),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              width: 85.w,
              child: TextFormField(
                controller: titleController,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 14, 69, 83),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  errorText: titleValidator ? "field error " : null,
                  focusColor: Colors.white,
                  //add prefix icon
                  prefixIcon: Icon(
                    Icons.menu,
                    color: Color.fromARGB(248, 141, 115, 29),
                  ),

                  labelText: 'Enter Title',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(248, 141, 115, 29),
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(248, 255, 219, 99), width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Color.fromARGB(255, 123, 246, 255),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 85.w,
              child: TextFormField(
                controller: IncomeController,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 14, 69, 83),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  errorText: amountValidator ? "field error " : null,
                  focusColor: Colors.white,
                  //add prefix icon
                  prefixIcon: Icon(
                    Icons.attach_money_outlined,
                    color: Color.fromARGB(248, 141, 115, 29),
                  ),

                  labelText: 'Enter Amount',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(248, 141, 115, 29),
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(248, 255, 219, 99), width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Color.fromARGB(255, 123, 246, 255),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 40.w,
                  child: TextFormField(
                    keyboardType: TextInputType.none,
                    onTap: () => displayDatePicker(context),
                    controller: _dateC,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 14, 69, 83),
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      errorText: dateValidator ? "field error " : null,
                      focusColor: Colors.white,
                      //add prefix icon
                      prefixIcon: Icon(
                        Icons.date_range,
                        color: Color.fromARGB(248, 141, 115, 29),
                      ),

                      labelText: 'Date',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(248, 141, 115, 29),
                        fontWeight: FontWeight.w600,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(248, 255, 219, 99),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Color.fromARGB(255, 123, 246, 255),
                    ),
                  ),
                ),
                Container(
                  width: 40.w,
                  child: TextFormField(
                    keyboardType: TextInputType.none,
                    onTap: () => displayTimePicker(context),
                    controller: _timeC,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 14, 69, 83),
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      errorText: timeValidator ? "field error " : null,
                      focusColor: Colors.white,
                      //add prefix icon
                      prefixIcon: Icon(
                        Icons.timer,
                        color: Color.fromARGB(248, 141, 115, 29),
                      ),

                      labelText: 'Time',
                      labelStyle: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(248, 141, 115, 29),
                        fontWeight: FontWeight.w600,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(248, 255, 219, 99),
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      fillColor: Color.fromARGB(255, 123, 246, 255),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: 85.w,
              child: TextFormField(
                controller: MEthordController,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 14, 69, 83),
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  errorText: modeValidator ? "field error " : null,
                  focusColor: Colors.white,
                  //add prefix icon
                  prefixIcon: Icon(
                    Icons.wallet,
                    color: Color.fromARGB(248, 141, 115, 29),
                  ),

                  labelText: 'Mode',
                  hintText: 'eg: Cash,Pytm',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(248, 141, 115, 29),
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(248, 255, 219, 99), width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Color.fromARGB(255, 123, 246, 255),
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text('Save'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(25.w, 5.h),
                    primary: Color.fromARGB(248, 155, 134, 64),
                    onPrimary: Colors.white,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  onPressed: () async {
                    print('---->>>>>>>>>>>>${titleController.text.toString()}');
                    print(
                        '---->>>>>>>>>>>>${IncomeController.text.toString()}');
                    print('---->>>>>>>>>>>>${_dateC.text.toString()}');
                    print('---->>>>>>>>>>>>${_timeC.text.toString()}');
                    print(
                        '---->>>>>>>>>>>>${MEthordController.text.toString()}');
                    setState(() {
                      //for validation we fecth details from conntroller and check is it empty or not
                      titleController.text.isEmpty
                          ? timeValidator = true
                          : timeValidator = false;
                      IncomeController.text.isEmpty
                          ? amountValidator = true
                          : amountValidator = false;
                      _dateC.text.isEmpty
                          ? dateValidator = true
                          : dateValidator = false;
                      _timeC.text.isEmpty
                          ? timeValidator = true
                          : timeValidator = false;
                      MEthordController.text.isEmpty
                          ? modeValidator = true
                          : modeValidator = false;
                    });

                    if (titleValidator == false &&
                        amountValidator == false &&
                        dateValidator == false &&
                        timeValidator == false &&
                        modeValidator == false) {
                      var _myincome = incomeModel();
                      var _allhistory = HistoryModel();
                      _myincome.amount =
                          int.parse(IncomeController.text.toString());
                      _myincome.date = _dateC.text.toString();
                      _myincome.time = _timeC.text.toString();
                      _myincome.title = titleController.text.toString();
                      _myincome.methord = MEthordController.text.toString();
                      _myincome.bool = check;
                      print("====================>>>");
                      print(MEthordController.text.toString());
                      var result =
                          await _servies.insertBudgetService(_myincome);
                      print('--->>>>${result}<<<<--------');

                      _allhistory.amount =
                          int.parse(IncomeController.text.toString());
                      _allhistory.date = _dateC.text.toString();

                      _allhistory.title = titleController.text.toString();
                      _allhistory.type = 'Income';
                      _allhistory.icons = 'green';
                      var resultHistoryIncome =
                          await _servies.inserhistory(_allhistory);
                      Fluttertoast.showToast(
                          msg: "Save Succesfully",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Color.fromARGB(255, 8, 8, 78),
                          textColor: Colors.white,
                          fontSize: 16.0);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Homepage(),
                          ));
                    }
                  },
                ),
                ElevatedButton(
                  child: Text('Clear'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(25.w, 5.h),
                    primary: Color.fromARGB(248, 155, 134, 64),
                    onPrimary: Colors.white,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  onPressed: () {
                    setState(() {
                      titleController.text = '';
                      IncomeController.clear();
                      _dateC.clear();
                      _timeC.clear();
                      MEthordController.clear();
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }

  Future displayDatePicker(BuildContext context) async {
    var date = await showDatePicker(
      context: context,
      initialDate: selected,
      firstDate: initial,
      lastDate: last,
    );

    if (date != null) {
      setState(() {
        _dateC.text = date.toLocal().toString().split(" ")[0];
      });
    }
  }

  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(context: context, initialTime: timeOfDay);

    if (time != null) {
      setState(() {
        _timeC.text = "${time.hour}:${time.minute}";
      });
    }
  }
}
