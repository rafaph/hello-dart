import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {

  /// Your program.
  start() {
    int count = onStar() ? 1 : 0;
    while(canMove()) {
      move();
      if (onStar()) {
        count++;
      }
    }
    say('I have found $count stars.');
  }
}


main() {
  createWorld('scenario.txt', MyPlayer());
}
