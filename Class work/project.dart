import 'dart:io';

main() {
  print("-----------------------------------------------------");
  print("Welcome to Kalyan Jwellers");
  print("-----------------------------------------------------");
  var firstname;
  print("Enter your First name:");
  firstname = stdin.readLineSync();
  var Lastname;
  print("Enter your Last name:");
  Lastname = stdin.readLineSync();
  var Age;
  print("How old are you:");
  Age = int.parse(stdin.readLineSync()!);
  var Gender;
  print("press 1) male\n press2)female");
  Gender = int.parse(stdin.readLineSync()!);

  var productname;
  print("Enter your product name");
  productname = stdin.readLineSync();
  int toprice = 4783;
  var productqty;
  print("Enter your product quntity:");
  productqty = int.parse(stdin.readLineSync()!);

  var amount = toprice * productqty;
  var markingcharge = amount * 8 / 100;
  var sum = amount + markingcharge;

  //greater than 65
  // var dis = sum * 10 / 100;
  // var dic = sum * 20 / 100;
  // var dim = sum * 30 / 100;
  // var fdis = sum * 20 / 100;
  // var fdic = sum * 30 / 100;
  // var fdim = sum * 40 / 100;
  // //less than than 65

  // var mdis = sum * 5 / 100;
  // var mdic = sum * 15 / 100;
  // var mdim = sum * 25 / 100;
  // var fdism = sum * 15 / 100;
  // var fdicm = sum * 25 / 100;
  // var fdimm = sum * 35 / 100;

  if (Age > 65) {
    if (Gender == '1') {
      if (sum >= 100000 && sum < 200000) {
        print(sum * 10 / 100);
      } else if (sum >= 200000 && sum < 300000) {
        print(sum * 20 / 100);
      } else if (sum >= 300000) {
        print(sum * 30 / 100);
      } else {
        print("your not a male and not greater than 65  ");
      }
    } else if (Gender == '2') {
      if (sum >= 100000 && sum < 200000) {
        print(sum * 20 / 100);
      } else if (sum >= 200000 && sum < 300000) {
        print(sum * 30 / 100);
      } else if (sum >= 300000) {
        print(sum * 40 / 100);
      } else {
        print("not a female not grater than 65");
      }
    } else {
      if (Gender == '1') {
        if (sum >= 100000 && sum < 200000) {
          print(sum * 5 / 100);
        } else if (sum >= 200000 && sum < 300000) {
          print(sum * 15 / 100);
        } else if (sum >= 300000) {
          print(sum * 25 / 100);
        } else {
          print("your not a male and not lessthan than 65  ");
        }
      } else if (Gender == '2') {
        if (sum >= 100000 && sum < 200000) {
          print(sum * 15 / 100);
        } else if (sum >= 200000 && sum < 300000) {
          print(sum * 25 / 100);
        } else if (sum >= 300000) {
          print(sum * 35 / 100);
        } else {
          print("not a female lessthan  than 65");
        }
      }
    }
  }

  print(" Your offical amount is $sum");
}
