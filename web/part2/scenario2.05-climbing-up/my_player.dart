import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {

  /// Your program.
  start() {
    turnLeft();
    while(canMove()) {
      oneStepUp();
    }
  }

  oneStepUp() {
    move();
    turnRight();
    move();
    turnLeft();
  }
}


main() {
  createWorld('scenario-a.txt', MyPlayer());
}
