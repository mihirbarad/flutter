import 'dart:io';

main() {
  var status = true;
  while (status) {
    print("ENter a Number ");
    var num = int.parse(stdin.readLineSync()!);
    print("num =$num");
    print("do you want to continue press 'y' for yes and press 'n for no'");
    var choice = stdin.readLineSync()!;
    if (choice == 'n') {
      status == false;
    }
  }
}
