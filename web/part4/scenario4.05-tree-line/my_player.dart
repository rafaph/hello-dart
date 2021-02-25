import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {

  int longestRow = 0;

  /// Your program.
  start() {
    while(!onStar()) {
      while(!treeFront() && canMove()) {
        move();
      }
      if (treeFront()) {
        turnLeft();
        int count = 0;
        while(treeRight()) {
          count++;
          move();
        }
        if (count > longestRow) {
          longestRow = count;
        }
        turnRight();
        move();
        move();
        turnRight();
        move();
        while(treeRight() && canMove()) {
          move();
        }
        turnLeft();
      }
    }
    say('The longest row have $longestRow trees');
  }

}


main() {
  createWorld('scenario.txt', MyPlayer());
}
