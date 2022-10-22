part of '_index.dart';

final puzzleGameCtrl = PuzzleGameCtrl();

class PuzzleGameCtrl {
  var values = [];

  var target = [
    [0, 0],
    [1, 0],
    [2, 0],
    [0, 1],
    [1, 1],
    [2, 1],
    [0, 2],
    [1, 2],
  ];

  var zonk = [2, 2];

  var isRunning = false;

  shuffle() {
    values.shuffle();
  }

  bool isOk(int i) {
    final selected = values[i];
    // check is top or bottom
    if (selected[0] == zonk[0]) {
      if (selected[1] == zonk[1] + 1 || selected[1] == zonk[1] - 1) {
        return true;
      }
    }
    // check is left or right
    if (selected[1] == zonk[1]) {
      if (selected[0] == zonk[0] + 1 || selected[0] == zonk[0] - 1) {
        return true;
      }
    }
    return false;
  }

  swap(int i) {
    if (isOk(i)) {
      final buffer = values[i];
      values[i] = [zonk[0], zonk[1]];
      zonk = buffer;
    }
  }

  restart() {
    values = [
      [0, 0],
      [1, 0],
      [2, 0],
      [0, 1],
      [1, 1],
      [2, 1],
      [0, 2],
      [1, 2],
    ];
  }
}
