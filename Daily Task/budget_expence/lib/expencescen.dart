import 'package:budget_expence/Database/Service/myService.dart';
import 'package:budget_expence/Database/expenceModel.dart';
import 'package:budget_expence/Database/histryModel.dart';
import 'package:budget_expence/Database/incomeModel.dart';
import 'package:budget_expence/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

class expenceScreen extends StatefulWidget {
  const expenceScreen({super.key});

  @override
  State<expenceScreen> createState() => _incomeState();
}

class _incomeState extends State<expenceScreen> {
  var _MEthordController = TextEditingController();
  var _titleController = TextEditingController();
  var _IncomeController = TextEditingController();
  var _dateController = TextEditingController();
  var _timeController = TextEditingController();
  var _check = 'false';
  var icn = 'red';
  var type = 'expence';

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

  var _expenceService = Myservices();
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
              "Expence Details",
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
                controller: _titleController,
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
                controller: _IncomeController,
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
                    controller: _dateController,
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
                    controller: _timeController,
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
                controller: _MEthordController,
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
                    print(
                        '---->>>>>>>>>>>>${_titleController.text.toString()}');
                    print(
                        '---->>>>>>>>>>>>${_IncomeController.text.toString()}');
                    print('---->>>>>>>>>>>>${_dateController.text.toString()}');
                    print('---->>>>>>>>>>>>${_timeController.text.toString()}');
                    print(
                        '---->>>>>>>>>>>>${_MEthordController.text.toString()}');
                    setState(() {
                      _titleController.text.isEmpty
                          ? timeValidator = true
                          : timeValidator = false;
                      _IncomeController.text.isEmpty
                          ? amountValidator = true
                          : amountValidator = false;
                      _dateController.text.isEmpty
                          ? dateValidator = true
                          : dateValidator = false;
                      _timeController.text.isEmpty
                          ? timeValidator = true
                          : timeValidator = false;
                      _MEthordController.text.isEmpty
                          ? modeValidator = true
                          : modeValidator = false;
                    });

                    if (titleValidator == false &&
                        amountValidator == false &&
                        dateValidator == false &&
                        timeValidator == false &&
                        modeValidator == false) {
                      var _myexpence = ExpenceModel();
                      var _myHistrory = HistoryModel();

                      _myexpence.amount =
                          int.parse(_IncomeController.text.toString());
                      _myexpence.date = _dateController.text.toString();
                      _myexpence.time = _timeController.text.toString();
                      _myexpence.title = _titleController.text.toString();
                      _myexpence.methord = _MEthordController.text.toString();
                      _myexpence.bool = _check;

                      _myHistrory.amount =
                          int.parse(_IncomeController.text.toString());
                      _myHistrory.date = _dateController.text.toString();
                      _myHistrory.title = _titleController.text.toString();
                      _myHistrory.icons = "red";
                      _myHistrory.type = "expense";

                      print("---> EXPENSE : title  ${_myHistrory.title}");

                      var historyResult =
                          await _expenceService.inserhistory(_myHistrory);

                      print("----> date : ${_myHistrory.date}");
                      print("-----> ${_myHistrory.icons}");
                      print("++++> HISTORY RESUULT : $historyResult");

                      print(_MEthordController.text.toString());

                      var result =
                          await _expenceService.inserExpence(_myexpence);

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
                      _titleController.text = '';
                      _IncomeController.clear();
                      _dateController.clear();
                      _timeController.clear();
                      _MEthordController.clear();
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
        _dateController.text = date.toLocal().toString().split(" ")[0];
      });
    }
  }

  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(context: context, initialTime: timeOfDay);

    if (time != null) {
      setState(() {
        _timeController.text = "${time.hour}:${time.minute}";
      });
    }
  }
}
