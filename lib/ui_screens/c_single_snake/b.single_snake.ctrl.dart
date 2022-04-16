part of '_index.dart';

final singleSnakeCtrl = SingleSnakeCtrl();

class SingleSnakeCtrl {
  final data = SingleSnakeData();

  tappedCoordinat(int x, int y) {
    debugPrint('$x , $y');
    if (data.rmArah.st == 'up' || data.rmArah.st == 'down') {
      if (x < data.rmSnake.st[0][0]) {
        data.rmArah.st = 'left';
      } else if (x > data.rmSnake.st[0][0]) {
        data.rmArah.st = 'right';
      }
    } else {
      if (y < data.rmSnake.st[0][1]) {
        data.rmArah.st = 'up';
      } else if (y > data.rmSnake.st[0][1]) {
        data.rmArah.st = 'down';
      }
    }
  }

  reset() {
    data.rmSnake.refresh();
    data.rmPoint.refresh();
    data.rmArah.refresh();
    data.rmFoodX.refresh();
    data.rmFoodY.refresh();
    data.rmIsRunning.refresh();
    data.rmIsPause.refresh();
  }

  randomFood() {
    if (data.rmSnake.st[0][0] == data.rmFoodX.st &&
        data.rmSnake.st[0][1] == data.rmFoodY.st) {
      data.rmFoodX.st = Random().nextInt(data.totalX);

      data.rmFoodY.st = Random().nextInt(data.totalY);
      data.rmPoint.st = data.rmPoint.st + 1;
      data.timerX.cancel();

      data.rmInitDuration.st = (data.rmInitDuration.st * 0.9).floor();
      start();
    } else {
      data.rmSnake.st.removeLast();
    }
  }

  changeDirection(String direction) => data.rmArah.st = direction;

  pause() => data.rmIsPause.st = !data.rmIsPause.st;

  stop() {
    data.rmIsPause.st = false;
    data.rmIsRunning.st = false;
  }

  play() {
    if (data.rmIsPause.st) {
      // resume game
    } else {
      start();
    }
    data.rmIsPause.st = false;
  }

  move() {
    if (data.rmArah.st == 'up') {
      final x = [data.rmSnake.st[0][0], data.rmSnake.st[0][1] - 1];

      data.rmSnake.st = [...data.rmSnake.st]..insert(0, x);
    }

    if (data.rmArah.st == 'down') {
      final x = [data.rmSnake.st[0][0], data.rmSnake.st[0][1] + 1];
      data.rmSnake.st = [...data.rmSnake.st]..insert(0, x);
    }

    if (data.rmArah.st == 'left') {
      final x = [data.rmSnake.st[0][0] - 1, data.rmSnake.st[0][1]];
      data.rmSnake.st = [...data.rmSnake.st]..insert(0, x);
    }

    if (data.rmArah.st == 'right') {
      final x = [data.rmSnake.st[0][0] + 1, data.rmSnake.st[0][1]];
      data.rmSnake.st = [...data.rmSnake.st]..insert(0, x);
    }
  }

  start() {
    data.rmIsRunning.st = true;
    Timer.periodic(
      Duration(milliseconds: data.rmInitDuration.st),
      (timer) {
        if (data.rmIsPause.st == false) {
          data.timerX = timer;
          move();
          through();
          updateIsFinish();
          checkIsFinish();
          randomFood();
        }
      },
    );
  }

  through() {
    if (data.rmSnake.st[0][0] < 0) {
      final snake = data.rmSnake.st;
      snake[0][0] = data.totalX - 2;
    }
    if (data.rmSnake.st[0][0] > data.totalX - 1) {
      final snake = data.rmSnake.st;
      snake[0][0] = 0;
    }
    if (data.rmSnake.st[0][1] < 0) {
      final snake = data.rmSnake.st;
      snake[0][1] = data.totalY - 2;
    }
    if (data.rmSnake.st[0][1] > data.totalY - 1) {
      final snake = data.rmSnake.st;
      snake[0][1] = 0;
    }
  }

  updateIsFinish() {
    if (touchBody()) {
      data.rmIsRunning.st = false;
    }
  }

  checkIsFinish() {
    if (data.rmIsRunning.st == false) {
      data.timerX.cancel();
      Dialogs.gameOver2('Your point is ${data.rmPoint.st}');
    }
  }

  bool touchBody() {
    var z = false;
    final headX = data.rmSnake.st[0][0];
    final headY = data.rmSnake.st[0][1];
    for (var i = 1; i < data.rmSnake.st.length; i++) {
      if (headX == data.rmSnake.st[i][0] && headY == data.rmSnake.st[i][1]) {
        z = true;
      }
    }
    return z;
  }

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----

}
