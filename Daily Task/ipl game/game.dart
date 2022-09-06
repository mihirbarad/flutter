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
    print("tail or heal  h/t");
    var toos = stdin.readLineSync()!;

    if (toos == 'h') {
      int random1(min, max) {
        return min + Random().nextInt(1);
      }

      var rando1 = random(1, 2);
      switch (rando1) {
        case 1:
          print("You are win the toos head");

          break;
        case 2:
          print("Your are loose toos tail");

          break;
      }
    } else {
      print("Your are loose toos head");
    }

    print("Enter Your score:");
    var score = int.parse(stdin.readLineSync()!);
    print("Your scre is $score");
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

    print("If your play aging  to enter y / n");
    var play = int.parse(stdin.readLineSync()!);
    if (play == 'n' || play == 'N') {
      print("have nice day");
      break;
    }
  }
}
