import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {
  /// Your program.
  start() {
    while (canMove()) {
      /**
       * If it's on a star, then remove it.
       * Move regardless it's on star or not.
       */
      if (onStar()) {
        removeStar();
      }
      move();

      /**
       * if it's on a star, remove it, otherwise put one star in place.
       * Move regardless it's on star or not.
       */
      if (onStar()) {
        removeStar();
      } else {
        putStar();
      }
      move();

      /**
       * If has a tree on left and it's on a start, remove it.
       * Move regardless it's on star or not.
       */
      if (treeLeft()) {
        if (onStar()) {
          removeStar();
        }
      }
      move();
    }
  }
}

main() {
  createWorld('scenario.txt', MyPlayer());
}
