import 'dart:io';

main() {
  var number;
  print("Your Status On/Off \n1)ON\n2)OFF");

  number = stdin.readLineSync();
  bool status;

  if (number == "1") {
    print("your Status true");
  } else {
    print("your Status false");
  }
}
