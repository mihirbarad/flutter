// void main() {
//   //Custom json
//   Map<dynamic, dynamic> json = {
//     "window": {
//       "title": "Sample Konfabulator Widget",
//       "name": "main_window",
//       "width": 500,
//       "height": 500
//     }
//   };

//   Map<dynamic, dynamic> result = json;
//   Map<String, dynamic> data = Map<String, dynamic>();
//   for (dynamic type in result.keys) {
//     data[type.toString()] = result[type];
//   }
//   print(data);
//   print(data['window']);
//   print(data['window']['title']);
// }

import 'dart:io';

void main() {
  var qutions;
  var ans;
  var userFilter;
  var extractedData;
  final combinedData = <Map<String, dynamic>>[];
  for (var i = 0; i < 3; i++) {
    print("enter qutions ");
    qutions = stdin.readLineSync()!;
    print("enter ans ");
    ans = stdin.readLineSync()!;
    combinedData.add(extractedData);
  }
}
