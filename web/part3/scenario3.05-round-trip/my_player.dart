import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {

  /// Your program.
  start() {
    while(!onStar()) {
      if (canMove()) {
        move();
      } else if (treeFront()) {
        if (treeLeft()) {
          turnRight();
        } else {
          turnLeft();
        }
      }
    }
    removeStar();
  }
}


main() {
  createWorld('scenario-b.txt', MyPlayer());
}
