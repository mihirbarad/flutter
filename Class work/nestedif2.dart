import 'dart:io';

main() {
  var num1 = 10;
  var num2 = 20;
  var num3 = 30;

  if (num1 > num2) {
    if (num1 > num3) {
      print("number 1 is greater ");
    } else {
      print("number 3 is greater");
    }
  } else {
    if (num2 > num3) {
      print("number 2 is greater ");
    } else {
      print("number 3 is greater");
    }
  }
}
