import 'dart:io';

main() {
  print("-----------------------------------------------------\n\n\n");
  print("\t\tWelcome to Kalyan Jwellers\n\n\n");
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
  print("Male to type m and female to type f");
  print("Enter your Gender (m/f):");
  Gender = stdin.readLineSync();

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

  var discount;

  var realamount;

  if (Age > 65) {
    if (Gender == 'm' || Gender == 'M') {
      if (sum >= 10000 && sum < 200000) {
        realamount = sum - (discount = sum * 10 / 100);
      } else if (sum >= 20000 && sum < 300000) {
        realamount = sum - (discount = sum * 20 / 100);
      } else if (sum >= 300000) {
        realamount = sum - (discount = sum * 30 / 100);
      }
    } else {
      if (sum >= 100000 && sum < 200000) {
        realamount = sum - (discount = sum * 20 / 100);
      } else if (sum > 200000 && sum < 300000) {
        realamount = sum - (discount = sum * 30 / 100);
      } else if (sum > 300000) {
        realamount = sum - (discount = sum * 40 / 100);
      }
    }
  } else {
    if (Gender == 'm' || Gender == 'M') {
      if (sum >= 10000 && sum < 200000) {
        realamount = sum - (discount = sum * 5 / 100);
      } else if (sum >= 20000 && sum < 300000) {
        realamount = sum - (discount = sum * 15 / 100);
      } else if (sum >= 300000) {
        realamount = sum - (discount = sum * 25 / 100);
      }
    } else {
      if (sum >= 10000 && sum < 200000) {
        realamount = sum - (discount = sum * 15 / 100);
      } else if (sum >= 20000 && sum < 300000) {
        realamount = sum - (discount = sum * 25 / 100);
      } else if (sum >= 300000) {
        realamount = sum - (discount = sum * 35 / 100);
      }
    }
  }
  print("-----------------------------------------------------\n");
  print("Purches Amount:- $sum");
  print("-----------------------------------------------------\n");
  print("GST");
  print("Your Discount Amount:- $discount");
  print("-----------------------------------------------------");
  print("-----------------------------------------------------");
  print("Your Net Amount :- $realamount\n\n");
  print("-----------------------------------------------------\n\n");
  print("Have A Nice Day-Thank You\n\n");
  print("-----------------------------------------------------");
}
