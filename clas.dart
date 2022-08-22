import 'dart:io';

main() {
  var subject1;
  var subject2;
  var subject3;
  var subject4;
  var subject5;
  var total;
  bool status = true;

  while (status) {
    print("Enter maths mark");
    subject1 = int.parse(stdin.readLineSync()!);
    print("Enter english mark");
    subject2 = int.parse(stdin.readLineSync()!);
    print("Enter gujrati mark");
    subject3 = int.parse(stdin.readLineSync()!);
    print("Enter scince mark");
    subject4 = int.parse(stdin.readLineSync()!);
    print("Enter s.scince mark");
    subject5 = int.parse(stdin.readLineSync()!);

    total = subject5 + subject4 + subject3 + subject2 + subject1;
    var percentage = total / 500 * 100;
    print("your percentage is $percentage");
    if (percentage > 80) {
      print("fist class");
    } else if (percentage > 60) {
      print("second class");
    } else if (percentage > 40) {
      print("thaird class");
    } else {
      print("your are faid");
      break;
    }
  }
}
