import 'package:budget_expence/Database/incomeModel.dart';
import 'package:budget_expence/Database/Service/myService.dart';
import 'package:budget_expence/Database/viewAllHistry.dart';
import 'package:budget_expence/Database/view_histry.dart';
import 'package:budget_expence/add_item.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int addMoney = 0;
  List<incomeModel> HistrybudgetList = <incomeModel>[];
  var _myservices = Myservices();
  var abc;
  @override
  void initState() {
    // TODO: implement initState221
    super.initState();
    GethistryBudget();
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
        addMoney += _mybudget.amount!;
        print("----addmoney-------$Entry-------------");
        print("----addmoney-------$addMoney-------------");
      });
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Text(
                  "Your Balance",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "₹${addMoney}.00",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(247, 178, 180, 180)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        "₹${addMoney}.00",
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
                    width: 10.w,
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        "Expence",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 255, 1, 1)),
                      ),
                      subtitle: Text(
                        "₹1500.00",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      leading: Icon(
                        Icons.arrow_circle_down_outlined,
                        color: Colors.red,
                        size: 7.h,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: HistrybudgetList.length,
                  itemBuilder: (context, index) {
                    if (HistrybudgetList[index].bool.toString() == 'true') {
                      abc = Icon(
                        Icons.arrow_circle_up_outlined,
                        color: Colors.green,
                        size: 6.h,
                      );
                    } else {
                      abc = Icon(
                        Icons.arrow_circle_down,
                        color: Colors.red,
                        size: 5.h,
                      );
                    }

                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),

                      margin:
                          EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
                      elevation: 10,
                      //shadowColor: Color.fromARGB(255, 44, 44, 44),
                      // color: Color.fromARGB(255, 230, 232, 231),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white70, width: 0.1),
                        ),
                        leading: abc,
                        title: Text(
                          HistrybudgetList[index].title.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                            '₹${HistrybudgetList[index].amount.toString()}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        trailing: SizedBox(
                          width: 30.w,
                          child: Expanded(
                            child: Row(
                              children: [
                                Text(
                                    '${HistrybudgetList[index].date.toString()} ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                                Text(
                                    '${HistrybudgetList[index].time.toString()}',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
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
            ],
          )),
    );
  }
}
