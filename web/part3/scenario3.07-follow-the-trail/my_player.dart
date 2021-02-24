import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {

  /// Your program.
  start() {
    while(!treeFront()) {
      if (onStar()) {
        removeStar();
        findStar();
      }
    }
    if(onStar()) {
      removeStar();
    }
  }
  findStar() {
    if (canMove()) {
      move();
      if (!onStar()) {
        turnRight();
        turnRight();
        move();

        turnRight();

        if (canMove()) {
          move();
          if (!onStar()) {
            turnRight();
            turnRight();
            move();

            if (canMove()) {
              move();
              if(!onStar()) {
                turnRight();
                turnRight();
                move();
                turnLeft();
                if (canMove()) {
                  move();
                }
              }
            }
          }
        }
      }
    }
  }
}


main() {
  createWorld('scenario-b.txt', MyPlayer());
}
