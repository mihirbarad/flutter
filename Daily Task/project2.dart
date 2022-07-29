import 'dart:io';

main() {
  print("----------------------------------------------------------------\n\n");
  print("Welcome to Amazing Pizza and Pasta Pizzeria\n\n");
  print("----------------------------------------------------------------\n\n");
  int manu;
  var name;
  int pizz_count;
  int pasta_count;
  double pizz_pasta_count = 0;
  int softdrink = 0;
  int bruschetta = 0;
  int icecream = 0;
  var agein;
  var status = true;

  double dayamount = 0;
  double totalpizz = 1;
  double totalpasta = 1;
  print("Press 1 : order menu");
  print("Press 2 : exit \nEnter your choice :");
  manu = int.parse(stdin.readLineSync()!);

  if (manu == 1) {
    print("1 large pizza = 10.99 AUD ");
    print("2 large Pizzas = 20.99 AUD ");
    print("3 Large Pizzas = 29.99 AUD");
    print(" ***Buy 4 or more pizza and get 1.5lt of soft drink free***");
    print("1 large pasta = 9.5 AUD ");
    print("2 large pastas = 17.00 AUD");
    print("3 large pastas = 27.50 AUD");
    print("***Buy 4 or more pastas and get 2 bruschetta free.***");
    print(
        "***Buy 4 or more pizzas and pastas and get 2 chocco brownies ice cream free.");
    print("--------------------------------------------------------\n");
    while (status) {
      print("Enter Your Name");
      name = stdin.readLineSync();
      print("--- Welcome $name---\n\n ");

      print("Enter number or pizza order you want :");
      pizz_count = int.parse(stdin.readLineSync()!);
      var pizz_amount = pizz_count * 10.99;
      print("your pizza order amount is : $pizz_amount\n\n");
      totalpizz = totalpizz + pizz_amount;
      if (pizz_count > 3) {
        print(" *** Congratulations !! 1.5lt softdrink free ***\n\n ");
        softdrink = softdrink + 1;
      }
      print("Enter number or pasta order you want :");
      pasta_count = int.parse(stdin.readLineSync()!);
      var pasta_amount = pasta_count * 9.5;
      totalpasta = totalpasta + pasta_amount;
      print(" your pasta order amount is : $pasta_amount");

      if (pasta_count > 3) {
        if (pizz_count >= 3) {
          print(" *** Congratulations !! get 2 bruschetta free *** ");
          print(
              " *** Congratulations !! get 2 chocco brownies ice cream free *** ");
          bruschetta = bruschetta + 1;
          icecream = icecream + 1;
        } else {
          print(" *** Congratulations !! get 2 bruschetta free *** ");
          bruschetta = bruschetta + 1;
        }
      }
      print("********************************\n");
      print(" your total order is : ${pasta_amount + pizz_amount} \n");
      print("********************************\n");
      dayamount = dayamount + pasta_amount + pizz_amount;

      print("-----> your Net order amount of the day is :$dayamount\n");

      print(" want to enter order from another customer (Y/N) : ");
      agein = stdin.readLineSync();
      pizz_pasta_count = pizz_pasta_count + pizz_count + pasta_count;
      if (agein == "N" || agein == "n") {
        print(" payment received from pizza :$totalpizz");
        print(" payment received from pasta :$totalpasta");
        print("payment received today :  $dayamount");
        print(
            "Number of pizza and pasta sold in one shift : $pizz_pasta_count");

        print("Number of 1.5lt soft drink bottles given : $softdrink ");
        print("Number of bruschetta given to customer : $bruschetta ");
        print(
            "Number of chocco brownies ice cream given to customer : $icecream");

        print("Bye Bye !!!");
        print(
            "----------------------------------------------------------------\n\n");
        print("---Thanks For Visiting---");
        print(
            "----------------------------------------------------------------\n\n");
        status = false;
      }
    }
  } else {
    print("Thanks For visiting");
  }
}
