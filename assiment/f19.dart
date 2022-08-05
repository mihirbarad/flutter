//19. Write a program of to find out the Area of Triangle, Rectangle and Circle using If Condition.(Must
//Be Menu Driven
import 'dart:io';

void main() {
  int r, l, w, b, h;
  var area;
  print("Input 1 for area of circle\n");
  print("Input 2 for area of rectangle\n");
  print("Input 3 for area of triangle\n");
  print("Input your choice : ");
  var choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("Input radious of the circle : ");
      r = int.parse(stdin.readLineSync()!);

      area = 3.14 * r * r;
      break;
    case 2:
      print("Input length and width of the rectangle");
      print("length: ");
      l = int.parse(stdin.readLineSync()!);
      print("width: ");
      w = int.parse(stdin.readLineSync()!);

      area = l * w;
      break;
    case 3:
      print("Input the base and hight of the triangle :");
      print("base:");
      b = int.parse(stdin.readLineSync()!);
      print("hight:");
      h = int.parse(stdin.readLineSync()!);

      area = .5 * b * h;
      break;
  }
  print("The area is :$area ");
}
