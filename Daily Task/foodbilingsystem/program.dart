import 'dart:io';

main() {
  var status = true;
  double amount_burger = 0;
  var amount_pizz = 0;
  var amount_dosa = 0;
  var amount_idli = 0;
  print("----------------------------------------------------------------\n");
  print("Welcome To food maniya\n");
  print("----------------------------------------------------------------");

  var grandamount;
  while (status) {
    print("-------------Manu---------------");
    print("1. Pizz   price = 180rs/pcs");
    print("2. Burger price = 100rs/pcs");
    print("3. Dosa   price = 120rs/pcs");
    print("4. Idli   price = 50rs/pcs");
    print("Enter Your Choice:");
    var manu = int.parse(stdin.readLineSync()!);
    if (manu == 1) {
      print("you have selected pizz ");
      print("Enter your quntity:");
      var pizz_select = int.parse(stdin.readLineSync()!);
      amount_pizz = pizz_select * 180;

      print("Your Amount is $amount_pizz");
    } else if (manu == 2) {
      print("you have selected burger ");
      print("Enter your quntity:");
      var burger_select = int.parse(stdin.readLineSync()!);
      amount_burger = burger_select * 100;

      print("Your Amount is $amount_burger");
    } else if (manu == 3) {
      print("you have selected dosa ");
      print("Enter your quntity:");
      var dosa_select = int.parse(stdin.readLineSync()!);
      amount_dosa = dosa_select * 120;

      print("Your Amount is $amount_dosa");
    } else if (manu == 4) {
      print("you have selected idli ");
      print("Enter your quntity:");
      var idli_select = int.parse(stdin.readLineSync()!);
      amount_idli = idli_select * 80;

      print("Your Amount is $amount_idli");
    } else {
      print("Ops type problem, try agin ");
      break;
    }
    grandamount = amount_pizz + amount_burger + amount_dosa + amount_idli;
    print("Your total amount is $grandamount");
    print("Do you want a more order y & n");
    var repert = stdin.readLineSync();
    if (repert == 'n' || repert == 'N') {
      print("--------------------------------\n");
      print("Thank You Have nice day\n");
      status = false;
    }
  }
}
