import 'dart:io';

main() {
  bool stutus = true;
  var menu;
  var qutions;
  var abc;

  var ans;
  var size;
  while (stutus) {
    print("welcome to tops quiz gaming challenge");
    print("select your role: ");
    print("Quiz Master (press 1)");
    print("Quiz Cracker (press 2)");
    print("enter the role: ");
    var role = int.parse(stdin.readLineSync()!);
    if (role == 1) {
      print("Menu");
      print("press 1 for add qutions");
      print("press 2 for view qutions");
      print("press 3 for delete qutions");
      print("press 4 for exit");
      print("which operations you want to perform: ");
      menu = int.parse(stdin.readLineSync()!);
    }
    if (menu == 1) {
      var logincred = new Map();
      for (var i = 0; i < 5; i++) {
        print("Enter qutions ");
        qutions = stdin.readLineSync()!;
        print("enter ans");
        ans = stdin.readLineSync()!;
        print("enter ans");
        logincred['qution'] = qutions;
        logincred['ans'] = '$ans\n';
        abc = logincred;

        print(logincred);
      }
      print(abc);

      //  print("Enter qutions: ");

      // qutions = stdin.readLineSync();
      // ans = stdin.readLineSync();
      // var details = new Map();
      // details[qutions] = "$qutions";
      // details[ans] = '$ans';
      // print(details);
    }
  }
}
