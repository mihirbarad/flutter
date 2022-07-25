import 'dart:io';

main() {
  var month;

  print("enter your first number");

  month = int.parse(stdin.readLineSync()!);

  if (month < 0) {
    print("number is nagative");
  } else {
    print("number is positie");
  }
}
