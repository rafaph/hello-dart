import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {

  /// Your program.
  start() {
    while(!treeLeft() || !treeRight()) {
      move();
    }
    say('AHHHH! This looks very dark in here!');
  }
}


main() {
  createWorld('scenario.txt', MyPlayer());
}
