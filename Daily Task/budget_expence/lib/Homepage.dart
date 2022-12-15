import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:topsBudget/Database/Service/myService.dart';
import 'package:topsBudget/Database/expenceModel.dart';
import 'package:topsBudget/Database/histryModel.dart';
import 'package:topsBudget/Database/incomeModel.dart';
import 'package:topsBudget/Database/viewAllHistry.dart';
import 'package:topsBudget/add_item.dart';
import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:topsBudget/stetic.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var income = 0;
  var expenceMoney = 0;
  double percentage = 0;
  var date;

  ///Time

  List<incomeModel> HistrybudgetList = <incomeModel>[];
  List<ExpenceModel> ExpenceHistoryList = <ExpenceModel>[];
  List<HistoryModel> HistryModel = <HistoryModel>[];

  var _myservices = Myservices();

  var abc;

  var addmoney = 0;
  int? names = 0;
  var dateController = TextEditingController();
  var _mysevice = Myservices();

  var mybudget_month = 0;
  @override
  void initState() {
    super.initState();
    GethistryBudget();
    HistoryGetExpence();
  }

  HistoryGetExpence() async {
    var result = await _myservices.historyGetExpence();
    ExpenceHistoryList = <ExpenceModel>[];

    print("------$result\n\n\n");

    result.forEach((Entry) {
      setState(() {
        var _myexpence = ExpenceModel();
        _myexpence.id = Entry['id'];

        _myexpence.amount = Entry['amount'];

        ExpenceHistoryList.add(_myexpence);
        expenceMoney += _myexpence.amount!;
      });
    });
  }

  GethistryBudget() async {
    var result = await _myservices.historyGetAllBudget();
    HistrybudgetList = <incomeModel>[];

    print("------$result\n\n\n");

    result.forEach((Entry) {
      setState(() {
        var _mybudget = incomeModel();
        _mybudget.id = Entry['id'];
        _mybudget.title = Entry['title'];
        _mybudget.amount = Entry['amount'];
        _mybudget.date = Entry['Date'];
        _mybudget.time = Entry['time'];
        _mybudget.methord = Entry['methord'];
        _mybudget.bool = Entry['bool'];

        HistrybudgetList.add(_mybudget);
        income += _mybudget.amount!;

        print("----addmoney-------$Entry-------------");
      });
    });
  }

  DeleteData(BuildContext context, id) {
    return showDialog(
        context: context,
        builder: (param) {
          return AlertDialog(
            title: Text("Are you want delete"),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        var _result =
                            await _myservices.deleteDataBudgetService(id);
                        GethistryBudget();
                        Navigator.pop(context);
                      },
                      child: Text("Yes")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("No")),
                ],
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color.fromARGB(248, 105, 86, 23),
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 1000),
                  child: Add_incomeandExpence(),
                  inheritTheme: true,
                  ctx: context),
            );
          },
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(left: 80.w, right: 10.w, top: 5.h),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 1000),
                            child: stetic(
                                expenceMoney: expenceMoney,
                                income: income,
                                percentage: percentage),
                            inheritTheme: true,
                            ctx: context),
                      );
                    },
                    icon: Icon(
                      Icons.stacked_bar_chart,
                      size: 30.sp,
                      color: Color.fromARGB(255, 4, 49, 86),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6.h),
                child: Text(
                  "Your Balance",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "₹${addmoney = income - expenceMoney}.00",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(247, 178, 180, 180)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      "Income",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.green),
                    ),
                    subtitle: Text(
                      "₹${income}.00",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    leading: Icon(
                      Icons.arrow_circle_up_outlined,
                      color: Colors.green,
                      size: 7.h,
                    ),
                  ),
                ),
                SizedBox(
                  width: 9.w,
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      "Expence",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                    subtitle: Text(
                      "₹${expenceMoney}.00",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    leading: Icon(
                      Icons.arrow_circle_down_outlined,
                      color: Colors.red,
                      size: 6.h,
                    ),
                  ),
                ),
              ]),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => viwee_history(),
                      ));
                },
                child: Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Show All transactions.",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
            ])));
  }
}
