import 'package:hello_dart/hello_dart.dart';

/// Your player.
class MyPlayer extends Player {

  /// Your program.
  start() {
    move();
    putStar();
    move();
  }
}

main() {
  character = 'catgirl';
  field = 'stone';
  createWorld('scenario.txt', MyPlayer());
}