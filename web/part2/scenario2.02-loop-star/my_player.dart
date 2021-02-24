import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {

  /// Your program.
  start() {
    while(!onStar()) {
      move();
    }
  }
}


main() {
  createWorld('scenario.txt', MyPlayer());
}
