import 'dart:io';

main() {
  var number;
  print("Enter Your Number");
  number = int.parse(stdin.readLineSync()!);
  bool status;

  status = (number > 10);
  if (status) {
    print("your Status $status");
  } else {
    print("your Status $status");
  }
}
