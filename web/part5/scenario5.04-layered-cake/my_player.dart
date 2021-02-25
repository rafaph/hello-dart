import 'dart:math' show Random;

import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {
  /// Your program.
  start() {
    int numLayers = 5; //(howOldIsGrandma() - 50) ~/ 10;
    print('Numlayers $numLayers');
    if (numLayers == 0) {
      say('Grandmother is only 50 years old.');
    } else {
      int width = 21;
      for (int i = 0; i < numLayers; i++) {
        drawRectangle(width, 2);
        if (i + 1 < numLayers) {
          multiMove(2);
        }

        width -= 4;
      }
    }
  }

  /// Puts [count] stars in a row.
  putStars(int count) {
    int i = 0;
    while (i < count) {
      putStar();
      i++;
      if (i < count) {
        if (canMove()) {
          move();
        }
      }
    }
  }

  /// Makes a number of [steps] in the current direction.
  multiMove(int steps) {
    for (int i = 0; i < steps; i++) {
      if (canMove()) {
        move();
      }
    }
  }

  /// Turns around by 180 degrees.
  turnAround(bool goingRight) {
    if (goingRight) {
      turnLeft();
      if (canMove()) {
        move();
        turnLeft();
      }
    } else {
      turnRight();
      if (canMove()) {
        move();
        turnRight();
      }
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

  int howOldIsGrandma() {
    return new Random().nextInt(51) + 50;
  }
}

main() {
  createWorld('scenario.txt', MyPlayer());
}
