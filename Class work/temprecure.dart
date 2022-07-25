//accept temp value from user
/*  if temp goes more then 100  it become air 
if temp between 0 to 100  it will be water and if temp lower than or equal to zero */
import 'dart:io';

main() {
  var temp;
  print("Enter Temprechutre");
  temp = int.parse(stdin.readLineSync()!);

  // if (temp >= 100) {
  //   print("IT become air");
  // } else if (temp < 0) {
  //   print("it will be water");
  // } else if (temp <= 100) {
  //   print("Teamp water");
  // } else {
  //   print("Teamp is lower");
  // }

  if (temp > 100) {
    print("IT become air");
  } else if (temp <= 100 && temp > 0) {
    print("it will be water");
  } else if (temp <= 0) {
    print("Temp is very lower");
  } else {
    print(" error");
  }
}
