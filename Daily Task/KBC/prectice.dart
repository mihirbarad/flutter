import 'dart:io';

main() {
  print("----------------------------------------------------------------\n\n");
  print("\t\tWelcome To KBC sesson 3\n\n");
  print("----------------------------------------------------------------\n\n");
  quntion();
}

void quntion() {
  var status = true;

  while (status) {
    print("tarak maheta ka ulta chashma me Tapu k papa kon he");
    print("A) Jethalal \t\t b)  Tarak Mahet");

    print("C) Bhide\t\t D)champak chacha");
    print("Enter your Answers");
    var ans = stdin.readLineSync()!;
    if (ans == 'A' || ans == 'a') {
      print("A B C _");
      print("A) D \t\t b) E");

      print("C) F\t\t D)G");
      print("Enter your Answers");
      var ans = stdin.readLineSync()!;
      if (ans == 'a' || ans == 'A') {
        print("Z Y X _");
        print("A) E \t\t b) w");

        print("C) F\t\t D)G");
        print("Enter your Answers");
        var ans = stdin.readLineSync()!;
        if (ans == 'b' || ans == 'B') {
          print("Z Y  _ w");
          print("A) E \t\t b)   w");

          print("C) x\t\t D)G");
          print("Enter your Answers");
          var ans = stdin.readLineSync()!;
          if (ans == 'c' || ans == 'C') {
            print("_ Y X w");
            print("A) E \t\t b) w");

            print("C) F\t\t D)z");
            print("Enter your Answers");
            var ans = stdin.readLineSync()!;
            if (ans == 'd' || ans == 'D') {
              print("_ _ X w");
              print("A) by \t\t b) kl");

              print("C) zy\t\t D)ui");
              print("Enter your Answers");
              var ans = stdin.readLineSync()!;
              if (ans == 'c' || ans == 'C') {
                print("_ _ _ w");
                print("A) aby \t\t b)dkl");

                print("C) zyx\t\t D)dui");
                print("Enter your Answers");
                var ans = stdin.readLineSync()!;
                if (ans == 'c' || ans == 'C') {
                  print("_ _ X _");
                  print("A) bwy \t\t b) kls");

                  print("C) zyw\t\t D)usi");
                  print("Enter your Answers");
                  var ans = stdin.readLineSync()!;
                  if (ans == 'c' || ans == 'C') {
                    print("Z _ X _");
                    print("A) by \t\t b) kl");

                    print("C) yw\t\t D)ui");
                    print("Enter your Answers");
                    var ans = stdin.readLineSync()!;
                    if (ans == 'c' || ans == 'C') {
                      print(" T _ P");
                      print("A) D \t\t b) A");

                      print("C) O\t\t D)i");
                      print("Enter your Answers");
                      var ans = stdin.readLineSync()!;
                      if (ans == 'c' || ans == 'C') {
                        print("Your Quiz Completed Game Over");
                        print("can you play aging (y/n):");
                        var ans = stdin.readLineSync()!;
                        if (ans == 'N' || ans == 'n') {
                          print(
                              "----------------------------------------------------------------\n\n");
                          print("\t\tThanks For Playing Game bye bye\n\n");
                          print(
                              "----------------------------------------------------------------\n\n");

                          status = false;
                        }
                      } else {
                        print("Game Over");
                        break;
                      }
                    } else {
                      print("Game Over");
                      break;
                    }
                  } else {
                    print("Game Over");
                    break;
                  }
                } else {
                  print("Game Over");
                  break;
                }
              } else {
                print("Game Over");
                break;
              }
            } else {
              print("Game Over");
              break;
            }
          } else {
            print("Game Over");
            break;
          }
        } else {
          print("Game Over");
          break;
        }
      } else {
        print("Game Over");
        break;
      }
    } else {
      status = false;
      print("Game Over");
    }
  }
}
