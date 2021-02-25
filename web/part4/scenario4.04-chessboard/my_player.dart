import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {

  /// Your program.
  start() {
    bool goingRight = true;
    bool hasStar = false;
    while(!treeFront()) {
      if (!hasStar) {
        putStar();
      }
      hasStar = !hasStar;
      while(canMove()) {
        move();
        if (!hasStar) {
          putStar();
        }
        hasStar = !hasStar;
      }
      if (!treeFront()) {
        if (goingRight) {
          turnAroundLeft();
        } else {
          turnAroundRight();
        }
        goingRight = !goingRight;
      }
    }
  }

  turnAroundRight() {
    turnLeft();
    move();
    turnLeft();
  }

  turnAroundLeft() {
    turnRight();
    move();
    turnRight();
  }
}


main() {
  createWorld('scenario.txt', MyPlayer());
}
