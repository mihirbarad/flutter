import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:topsBudget/Database/Service/myService.dart';
import 'package:topsBudget/Database/histryModel.dart';
import 'package:topsBudget/Homepage.dart';

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

  var incos;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Homepage(),
                  ));
              print('buton back');
            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          backgroundColor: Color.fromARGB(248, 174, 147, 55),
          title: Text("All Transaction History "),
          centerTitle: true,
          toolbarHeight: 120,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(80),
          ))),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: HistryList.length,
              itemBuilder: (context, index) {
                if (HistryList[index].type == 'Expense') {
                  incos = Icon(
                    Icons.arrow_circle_down_outlined,
                    color: Colors.red,
                    size: 6.h,
                  );
                } else {
                  incos = Icon(
                    Icons.arrow_circle_up_outlined,
                    color: Colors.green,
                    size: 6.h,
                  );
                }
                return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    margin:
                        EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
                    elevation: 10,
                    child: ListTile(
                      onTap: () {},
                      leading: incos,
                      title: Text(
                        '${HistryList[index].title}',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        '₹${HistryList[index].amount}',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      trailing: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                "${HistryList[index].type}",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "${HistryList[index].date}",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),

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
          ),
        ],
      ),
    );
  }
}
