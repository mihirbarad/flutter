import 'dart:io';

main() {
  //var name;
  // print("enter name");
  // name = stdin.readLineSync();

  var marks;
  print("enter your marks");
  marks = int.parse(stdin.readLineSync()!);

  if (marks > 0 && marks <= 100) {
    if (marks >= 70) {
      print("A greade");
    } else if (marks >= 60 && marks < 70) {
      print("B greade");
    } else if (marks >= 50 && marks < 60) {
      print("C greade");
    } else if (marks >= 40 && marks < 50) {
      print("D grade");
    } else {
      print("faild");
    }
  } else {
    print("invalied");
  }
}
