// import 'package:budget_expence/Database/Service/myService.dart';
// import 'package:budget_expence/Database/expenceModel.dart';
// import 'package:budget_expence/Database/incomeModel.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

// class Expence extends StatefulWidget {
//   const Expence({super.key});

//   @override
//   State<Expence> createState() => _ExpenceState();
// }

// class _ExpenceState extends State<Expence> {
//   int addMoney = 0;
//   List<ExpenceModel> HistryexpenceList = <ExpenceModel>[];
//   List<incomeModel> HistrybudgetList = <incomeModel>[];
//   var _myservices = Myservices();
//   var abc;
//   @override
//   void initState() {
//     // TODO: implement initState221
//     super.initState();
//     expenceHistory();
//     GethistryBudget();
//   }

//   GethistryBudget() async {
//     var result = await _myservices.historyGetAllBudget();
//     HistrybudgetList = <incomeModel>[];

//     print("------$result\n\n\n");

//     result.forEach((Entry) {
//       setState(() {
//         var _mybudget = incomeModel();
//         _mybudget.id = Entry['id'];
//         _mybudget.title = Entry['title'];
//         _mybudget.amount = Entry['amount'];
//         _mybudget.date = Entry['Date'];
//         _mybudget.time = Entry['time'];
//         _mybudget.methord = Entry['methord'];
//         _mybudget.bool = Entry['bool'];

//         HistrybudgetList.add(_mybudget);
//         addMoney += _mybudget.amount!;
//         print("----addmoney-------$Entry-------------");
//         print("----addmoney-------$addMoney-------------");
//       });
//     });
//   }

//   expenceHistory() async {
//     var result = await _myservices.historyGetExpence();
//     HistryexpenceList = <ExpenceModel>[];

//     print("------$result\n\n\n");

//     result.forEach((Entry) {
//       setState(() {
//         var _myservices = ExpenceModel();
//         _myservices.id = Entry['id'];
//         _myservices.title = Entry['title'];
//         _myservices.amount = Entry['amount'];
//         _myservices.date = Entry['Date'];
//         _myservices.time = Entry['time'];
//         _myservices.methord = Entry['methord'];
//         _myservices.bool = Entry['bool'];

//         HistryexpenceList.add(_myservices);
//         addMoney += _myservices.amount!;
//         print("----addmoney-------$Entry-------------");
//         print("----addmoney-------$addMoney-------------");
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Abcd"),
//       ),
//       body: ListView.builder(
//         shrinkWrap: true,
//         itemCount: HistryexpenceList.length,
//         itemBuilder: (context, index) {
//           if (HistryexpenceList[index].bool.toString() == 'true') {
//             abc = Icon(
//               Icons.arrow_circle_up_outlined,
//               color: Colors.green,
//               size: 6.h,
//             );
//           } else {
//             abc = Icon(
//               Icons.arrow_circle_down,
//               color: Colors.red,
//               size: 5.h,
//             );
//           }

//           return Card(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(25.0),
//             ),

//             margin: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
//             elevation: 10,
//             //shadowColor: Color.fromARGB(255, 44, 44, 44),
//             // color: Color.fromARGB(255, 230, 232, 231),
//             child: ListTile(
//               shape: RoundedRectangleBorder(
//                 side: BorderSide(color: Colors.white70, width: 0.1),
//               ),
//               leading: abc,
//               title: Text(
//                 HistryexpenceList[index].title.toString(),
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               subtitle: Text('₹${HistryexpenceList[index].amount.toString()}',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
//               trailing: SizedBox(
//                 width: 30.w,
//                 child: Expanded(
//                   child: Row(
//                     children: [
//                       Text('${HistryexpenceList[index].date.toString()} ',
//                           style: TextStyle(
//                               fontSize: 14, fontWeight: FontWeight.w400)),
//                       Text('${HistryexpenceList[index].time.toString()}',
//                           style: TextStyle(
//                               fontSize: 14, fontWeight: FontWeight.w400)),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
