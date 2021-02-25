import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {


  /// Your program.
  start() {
    bool goingRight = true;
    while(!treeFront()) {
      if(onStar()) {
        removeStar();
      }
      while(canMove()) {
        move();
        if(onStar()) {
          removeStar();
        }
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
