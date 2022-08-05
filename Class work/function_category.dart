import 'dart:io';

main() {
  sum(10, 20);
  print(NagativPositiov());
  var ans = mul();
  print(ans);
}

void sum(var num1, var num2) {
  print(num1 + num2);
}

String NagativPositiov() {
  print("Enter number");
  var num = int.parse(stdin.readLineSync()!);
  if (num >= 0) {
    return "positive";
  } else {
    return "Nagative";
  }
}

int mul() {
  var anss;
  print("Enter number 1");
  var num1 = int.parse(stdin.readLineSync()!);
  print("Enter number 2");
  var num2 = int.parse(stdin.readLineSync()!);

  return anss = num1 * num2;
}
