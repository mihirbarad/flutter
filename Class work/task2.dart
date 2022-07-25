import 'dart:io';

main() {
  var month;

  print("enter your first number");

  month = int.parse(stdin.readLineSync()!);

  if (month % 2 == 0) {
    print("number is even");
  } else {
    print("number is odd");
  }
}
