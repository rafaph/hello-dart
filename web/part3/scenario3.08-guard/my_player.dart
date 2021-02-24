import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {
  /// Your program.
  start() {
    while (true) {
      if (treeFront()) {
        if (treeLeft()) {
          if (treeRight()) {
            turnLeft();
            turnLeft();
            move();
          } else {
            turnRight();
            move();
          }
        } else {
          turnLeft();
          move();
        }
      } else if (treeRight()) {
        move();
      } else {
        turnRight();
        move();
      }
    }
  }
}

main() {
  createWorld('scenario-b.txt', MyPlayer());
}
