import 'package:hello_dart/hello_dart.dart';
import 'dart:math' show Random;

/// Your player.
class MyPlayer extends Player {
  /// Your program.
  start() {
    drawRectangle(21, 4);
    drawCandles(howOldIsGrandma() ~/ 10);
  }

  /// Puts [count] stars in a row.
  putStars(int count) {
    int i = 0;
    while (i < count) {
      putStar();
      i++;
      if (i < count) {
        move();
      }
    }
  }

  /// Makes a number of [steps] in the current direction.
  multiMove(int steps) {
    for (int i = 0; i < steps; i++) {
      move();
    }
  }

  /// Turns around by 180 degrees.
  turnAround(bool goingRight) {
    if (goingRight) {
      turnLeft();
      move();
      turnLeft();
    } else {
      turnRight();
      move();
      turnRight();
    }
  }

  drawRectangle(int width, int height) {
    int i = 0;
    bool goingRight = true;
    while (i < height) {
      putStars(width);
      turnAround(goingRight);
      goingRight = !goingRight;
      i++;
    }
  }

  drawCandles(int count) {
    for (int i = 0; i < count; i++) {
      move();
      turnLeft();
      putStars(3);
      turnRight();
      move();
      turnRight();
      multiMove(2);
      turnLeft();
    }
  }

  int howOldIsGrandma() {
    return new Random().nextInt(61) + 40;
  }
}

main() {
  createWorld('scenario.txt', MyPlayer());
}
