import 'dart:io';

void main() {
  print("welcome to fruit ");
  print("1)Manages");
  print("2)customer");

  print("select this role");
  var role = int.parse(stdin.readLineSync()!);

  if (role == 1) {
    print("welcome menager ");

    print("1)add item fruit");
    print("2)delete item fruit");
    print("3)view item fruit");
    print("select the menu");

    var select = int.parse(stdin.readLineSync()!);
  }
}
