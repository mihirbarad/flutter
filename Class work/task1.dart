import 'dart:io';

main() {
  var month;
  var year;

  print("enter your first number");

  month = int.parse(stdin.readLineSync()!);
  print("enter your second number");
  year = int.parse(stdin.readLineSync()!);

  if (month < year) {
    print("second number is grater then");
  } else {
    print("second number is lessthen");
  }
}
