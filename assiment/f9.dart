// 9.Write a Program to show swap of two No's without using third variable

main() {
  int a = 10;
  int b = 20;

  print(" before swap a = $a, b=$b");
  a = a + b; //a=30
  b = a - b; //b=10
  a = a - b; //a=30-10=20
  print(" after swap a= $a, b=$b");
}
