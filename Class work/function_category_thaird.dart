/*
Function without parameter and fucntion with return type and
synntex:

void functname(){
  return
}
 */

void main() {
  print("sum functoin ");
  sum();
  var ans = mul();
  print(ans);
}

void sum() {
  var num1 = 10;
  var num2 = 20;
  print(num1 + num2);
}

int mul() {
  var num1 = 10;
  var num2 = 20;
  return num1 + num2;
}
