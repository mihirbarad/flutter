import 'dart:io';

main() {
  print("enter 1 fo monday and enter 2 for tuesday ");

  var num;
  print("enter your choise");
  num = int.parse(stdin.readLineSync()!);

  switch (num) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("wensday");
      break;

    default:
      print("Invalied");
      break;
  }
}
