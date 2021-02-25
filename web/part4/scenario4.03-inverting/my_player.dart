import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {

  /// Your program.
  start() {
    bool goingRight = true;
    while(!treeFront()) {
      invert();
      while(canMove()) {
        move();
        invert();
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

  invert() {
    if(onStar()) {
      removeStar();
    } else {
      putStar();
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
