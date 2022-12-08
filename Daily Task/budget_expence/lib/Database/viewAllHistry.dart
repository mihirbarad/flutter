import 'package:budget_expence/Database/Service/myService.dart';
import 'package:budget_expence/Database/expenceModel.dart';
import 'package:budget_expence/Database/histryModel.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class viwee_history extends StatefulWidget {
  const viwee_history({super.key});

  @override
  State<viwee_history> createState() => _viwee_historyState();
}

class _viwee_historyState extends State<viwee_history> {
  List<HistoryModel> HistryList = <HistoryModel>[];

  var _myservices = Myservices();

  var abc;
  @override
  void initState() {
    super.initState();
    GethistryBudget();
  }

  GethistryBudget() async {
    var result = await _myservices.historyGetHistory();
    HistryList = <HistoryModel>[];

    print("------$result\n\n\n");

    result.forEach((Entry) {
      setState(() {
        var _myHistory = HistoryModel();
        _myHistory.id = Entry['id'];
        _myHistory.title = Entry['title'];
        _myHistory.amount = Entry['amount'];
        _myHistory.date = Entry['Date'];
        _myHistory.type = Entry['type'];
        _myHistory.icons = Entry['icons'];

        HistryList.add(_myHistory);

        print("----addmoney-------$Entry-------------");
      });
    });
  }

  var incos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: HistryList.length,
        itemBuilder: (context, index) {
          if (HistryList[index].type == 'expense') {
            incos = Icon(
              Icons.arrow_circle_up_outlined,
              color: Colors.red,
              size: 6.h,
            );
          } else {
            incos = Icon(
              Icons.arrow_circle_down_outlined,
              color: Colors.green,
              size: 6.h,
            );
          }
          return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              margin: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
              elevation: 10,
              //shadowColor: Color.fromARGB(255, 44, 44, 44),
              // color: Color.fromARGB(255, 230, 232, 231),
              child: ListTile(
                leading: incos,
                title: Text('${HistryList[index].title}'),
                subtitle: Text('${HistryList[index].amount}'),

                // ListTile(
                //   shape: RoundedRectangleBorder(
                //     side: BorderSide(color: Colors.white70, width: 0.1),
                //   ),
                //   leading: incos,
                //   title: Text(
                //     HistryList[index].title.toString(),
                //     style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.w500,
                //     ),
                //   ),
                //   subtitle: Text('₹${HistryList[index].amount.toString()}',
                //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                // ),
              ));
        },
      ),
    );
  }
}
