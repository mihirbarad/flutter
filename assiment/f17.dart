//17. Write Program use switch statement. Display Monday to Sunday
import 'dart:io';

main() {
  print("Enter 1 to 6 number for weekday");
  var week = int.parse(stdin.readLineSync()!);

  switch (week) {
    case 1:
      print("monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("wenasday");
      break;
    case 4:
      print("Friday");
      break;
    case 5:
      print("Seturday");
      break;
    case 6:
      print("sunday");
      break;
  }
}
