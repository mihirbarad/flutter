import 'dart:io';

main() {
  var status = true;
  while (status) {
    print("ENter a Number 1");
    var num1 = int.parse(stdin.readLineSync()!);
    print("ENter a Number2 ");
    var num2 = int.parse(stdin.readLineSync()!);
    print("total is ${num1 + num2}");

    print("do you want to continue press 'y' for yes and press 'n for no'");
    var choice = stdin.readLineSync()!;
    if (choice == 'n' || choice == 'N') {
      status = false;
    }
  }
}
