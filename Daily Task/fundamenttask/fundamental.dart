import 'dart:io';

main() {
  bool status = true;
  var exits;

  while (status) {
    print("-----------------------------------------------------\n");
    print("Welcome to Fundamental Programing\n ");
    print("-----------------------------------------------------\n");
    print("Main menu");
    print("-----------------------------------------------------");
    print("1) Equality");
    print("2)String Copy");
    print("3)Concat");
    print("4)show");
    print("5)Revers");
    print("6)palindrome");
    print("7)Sub String ");
    print("8) Exit");
    print("Please Enter Your Choise :");

    var choise = int.parse(stdin.readLineSync()!);
    if (choise == 5) {
      print("Please Enter your string :");
      var a = stdin.readLineSync();

      a = a!.split("").reversed.join("");

      print("your revers string is $a");
      print("Do you want to continue press y/n");
      exits = stdin.readLineSync();
      if (exits == 'n' || exits == 'N') {
        print("Thank You Have a Nice Day");
        status = false;
      }
    }
    if (choise == 1) {
      print("Please Enter your string :");
      var a = stdin.readLineSync();

      print("your  string is $a");
      print("Do you want to continue press y/n");
      exits = stdin.readLineSync();
      if (exits == 'n' || exits == 'N') {
        print("Thank You Have a Nice Day");
        status = false;
      }
    }
    if (choise == 2) {
      print("Please Enter your string :");
      var a = stdin.readLineSync();
      var b = a;
      print("your  first string is $a");
      print("Your copystring is $b");
      print("Do you want to continue press y/n");
      exits = stdin.readLineSync();
      if (exits == 'n' || exits == 'N') {
        print("Thank You Have a Nice Day");
        status = false;
      }
    }
    if (choise == 3) {
      print("Please Enter your string :");
      var a = stdin.readLineSync();
      print("Please Enter your string :");
      var b = stdin.readLineSync();

      print("your  Concatination is  $a $b");

      print("Do you want to continue press y/n");
      exits = stdin.readLineSync();
      if (exits == 'n' || exits == 'N') {
        print("Thank You Have a Nice Day");
        status = false;
      }
    }
    if (choise == 4) {
      print("Please Enter your string :");
      var a = stdin.readLineSync();

      print("your  Show String  is  $a ");

      print("Do you want to continue press y/n");
      exits = stdin.readLineSync();
      if (exits == 'n' || exits == 'N') {
        print("Thank You Have a Nice Day");
        status = false;
      }
    }
    if (choise == 6) {
      int reminder, sum = 0, temp;
      print("Enter Your Number");
      var number = int.parse(stdin.readLineSync()!);
      temp = number;

      while (number > 0) {
        reminder = number % 10;
        sum = (sum * 10) + reminder;
        number = number ~/ 10;
      }

      if (sum == temp) {
        print('Its A Palindrome number');
      } else {
        print('Its A Not Palindrome number');
      }
      print("Do you want to continue press y/n");
      exits = stdin.readLineSync();
      if (exits == 'n' || exits == 'N') {
        print("Thank You Have a Nice Day");
        status = false;
      }
    }
    if (choise == 7) {
      print("Enter Your String");
      var str = stdin.readLineSync();
      print("Enter Number to cut your string");
      var cut = int.parse(stdin.readLineSync()!);

      print("New String: ${str!.substring(cut)}");

      print("Do you want to continue press y/n");
      exits = stdin.readLineSync();
      if (exits == 'n' || exits == 'N') {
        print("Thank You Have a Nice Day");
        status = false;
      }
    }
    if (choise == 8) {
      print("Thank You Have a Nice Day");
      status = false;
    }
  }
}
