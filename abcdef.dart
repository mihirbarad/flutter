import 'dart:io';

void main() {
  var num;
  var evensum;
  var oddsum;
  double sum = 0;

  for (var n = 1; n <= 5; n++) {
    print("Enter number : ");
    num = int.parse(stdin.readLineSync()!);

    if (num % 2 == 0) {
      print("even number");
    } else {
      print("Odd number");
    }
    sum = sum + num;
  }

  print("This the sum of even number :" + "$sum");
  print("This is the sum of odd numbers :" + "$oddsum");
}
