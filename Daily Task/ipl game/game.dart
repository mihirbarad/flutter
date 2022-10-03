import 'dart:convert';
import 'dart:io';
import 'dart:math';

main() {
  bool status = true;

  while (status) {
    print("-----------------------------------------------------\n");
    print("Welcome to IPL Game\n");
    print("-----------------------------------------------------");

    print("1)CSK");
    var a = 'csk';
    var b = 'DD';
    var c = 'PJ';
    var d = 'PUNE';
    var e = 'MI';
    var f = 'Hyd';
    var g = 'GL';

    print("2)DD");
    print("3)PJ");
    print("4)Pune");
    print("5)MI");

    print("6)Hyd");
    print("7)GL");
    print("select Your team :");
    var select_team = int.parse(stdin.readLineSync()!);
    print("Your Team is $select_team:-");

    switch (select_team) {
      case 1:
        print("CSK");

        break;
      case 2:
        print("DD");

        break;
      case 3:
        print("PJ");

        break;
      case 4:
        print("PUNE");

        break;
      case 5:
        print("MI");

        break;
      case 6:
        print("Hyd");

        break;
      case 7:
        print("GL");

        break;
      default:
        print("memory full");
        break;
    }

    // var rng = new Random();
    // var l = new List.generate(1, (_) => rng.nextInt(100));
    int random(min, max) {
      return min + Random().nextInt(max - min);
    }

    var rando = random(1, 7);
    print("Your opp team is :-");

    switch (rando) {
      case 1:
        print("CSK");

        break;
      case 2:
        print("DD");

        break;
      case 3:
        print("PJ");

        break;
      case 4:
        print("PUNE");

        break;
      case 5:
        print("MI");

        break;
      case 6:
        print("Hyd");

        break;
      case 7:
        print("GL");

        break;
      default:
        print("memory full");
        break;
    }
    if (select_team == rando) {
      print("wather is not good ");
      status == false;
    }
    var too1 = element;
    print("tail or heal  h/t");
    var toos = stdin.readLineSync()!;
    if (toos == 'h' || toos == 'H') {
      print("toss is $element");
      if (element == 'head') {
        print("You are win this tose");
      } else {
        print("You are loose tose");
      }
    } else if (toos == 't' || toos == 'T') {
      print("toss is $element");
      if (element == 'tail') {
        print("You are win this tose");
      } else {
        print("You are loose tose");
      }
    } else {
      print("oops network error 1");
    }

    print("Enter Your score:");
    var score = int.parse(stdin.readLineSync()!);
    int random2(min, max) {
      return min + Random().nextInt(min - max);
    }

    var rando2 = random(40, 250);
    print("Your score is $score and your oopo sit team score is  $rando2");
    if (score > rando2) {
      print("Your are win this match");
    } else {
      print("Your are loose this match");
    }
    print("If you play agin to enter y/n");
    var agin = stdin.readLineSync()!;
    if (agin == 'n' || agin == 'N') {
      print("-----------------------------------------------------\n");
      print("Have a Nice Day ");
      status = false;
    }
  }
}

var list = ['head', 'tail'];

// generates a new Random object
final _random = new Random();

// generate a random index based on the list length
// and use it to retrieve the element
var element = list[_random.nextInt(list.length)];
