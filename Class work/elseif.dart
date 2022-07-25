import 'dart:io';

main() {
  /*
  if(condition){
    statement
  } else if(condition)
  {
    statement
  }
  else{
    statement
  }
  */

  var score;
  print("Enter Your Score: ");
  score = int.parse(stdin.readLineSync()!);

  if (score >= 80) {
    print("A Greade");
  } else if (score >= 60) {
    print("b Greade");
  } else if (score >= 50) {
    print("C Greade");
  } else if (score >= 40) {
    print("D Greade");
  } else {
    print("Faile");
  }
}
