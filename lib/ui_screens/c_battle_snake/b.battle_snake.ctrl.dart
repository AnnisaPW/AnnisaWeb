part of '_index.dart';

final battleSnakeCtrl = BattleSnakeCtrl();

class BattleSnakeCtrl {
  final data = BattleSnakeData();

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
    data.rmArahSnake2.refresh();
    data.rmFoodX.refresh();
    data.rmFoodY.refresh();
    data.rmIsRunning.refresh();
    data.rmIsPause.refresh();
    data.rmSnake2.refresh();
  }

  List<int> randomFood() {
    var snakeString = data.rmSnake.st.map((e) => e.toString());
    String str;
    int x;
    int y;

    do {
      x = Random().nextInt(data.totalX);
      y = Random().nextInt(data.totalY);
      str = '[$x, $y]';
      debugPrint(str);
    } while (snakeString.contains(str));

    data.rmFoodX.st = x;
    data.rmFoodY.st = y;
    return [x, y];
  }

  checkFood() {
    if (data.rmSnake.st[0][0] == data.rmFoodX.st &&
        data.rmSnake.st[0][1] == data.rmFoodY.st) {
      data.rmFoodX.st = randomFood()[0];
      data.rmFoodY.st = randomFood()[1];

      data.rmPoint.st = data.rmPoint.st + 1;
      data.timerx.cancel();

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

    debugPrint(data.rmSnake2.st.toString());
  }

  start() {
    data.rmIsRunning.st = true;
    Timer.periodic(
      Duration(milliseconds: data.rmInitDuration.st),
      (timer) {
        if (data.rmIsPause.st == false) {
          data.timerx = timer;
          move();
          through();
          updateIsFinish();
          checkIsFinish();
          checkFood();
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
    if (touchBody() || collisions() || touchBodySnake2()) {
      data.rmIsRunning.st = false;
    }
  }

  checkIsFinish() {
    if (data.rmIsRunning.st == false) {
      data.timerx.cancel();
      Dialogs.gameOver('Your point is ${data.rmPoint.st}');
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

  bool collisions() =>
      data.rmSnake.st[0][0] == data.rmSnake2.st[0][0] &&
      data.rmSnake.st[0][1] == data.rmSnake2.st[0][1];

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----

  start2() {
    data.rmIsRunning.st = true;
    Timer.periodic(
      const Duration(milliseconds: 500),
      (timer2) {
        if (data.rmIsPause.st == false) {
          move2();
          throughSnake2();
          gameOverSnake2(timer2);
          randomFood2();
        }
      },
    );
  }

  move2() {
    var snakeX = data.rmSnake2.st[0][0];
    var snakeY = data.rmSnake2.st[0][1];

    if (snakeX == data.rmFoodX.st) {
      if (snakeY > data.rmFoodY.st) {
        data.rmArahSnake2.st = 'up';
      }
      if (snakeY < data.rmFoodY.st) {
        data.rmArahSnake2.st = 'down';
      }
    } else {
      if (snakeX > data.rmFoodX.st) {
        data.rmArahSnake2.st = 'left';
      }
      if (snakeX < data.rmFoodX.st) {
        data.rmArahSnake2.st = 'right';
      }
    }

    debugPrint(data.rmArahSnake2.st);

    if (data.rmArahSnake2.st == 'up') {
      final x = [data.rmSnake2.st[0][0], data.rmSnake2.st[0][1] - 1];
      data.rmSnake2.st = [...data.rmSnake2.st]..insert(0, x);
    }

    if (data.rmArahSnake2.st == 'down') {
      final x = [data.rmSnake2.st[0][0], data.rmSnake2.st[0][1] + 1];
      data.rmSnake2.st = [...data.rmSnake2.st]..insert(0, x);
    }

    if (data.rmArahSnake2.st == 'left') {
      final x = [data.rmSnake2.st[0][0] - 1, data.rmSnake2.st[0][1]];
      data.rmSnake2.st = [...data.rmSnake2.st]..insert(0, x);
    }

    if (data.rmArahSnake2.st == 'right') {
      final x = [data.rmSnake2.st[0][0] + 1, data.rmSnake2.st[0][1]];
      data.rmSnake2.st = [...data.rmSnake2.st]..insert(0, x);
    }
  }

  randomFood2() {
    if (data.rmSnake2.st[0][0] == data.rmFoodX.st &&
        data.rmSnake2.st[0][1] == data.rmFoodY.st) {
      data.rmFoodX.st = Random().nextInt(data.totalX);
      data.rmFoodY.st = Random().nextInt(data.totalY);
    } else {
      data.rmSnake2.st.removeLast();
    }
  }

  gameOverSnake2(Timer timer2) {
    if (touchBody() ||
        collisions() ||
        touchBodySnake2() ||
        !data.rmIsRunning.st) {
      timer2.cancel();
    }
  }

  throughSnake2() {
    if (data.rmSnake2.st[0][0] < 0) {
      final snake = data.rmSnake2.st;
      snake[0][0] = data.totalX - 2;
    }
    if (data.rmSnake2.st[0][0] > data.totalX - 1) {
      final snake = data.rmSnake2.st;
      snake[0][0] = 0;
    }
    if (data.rmSnake2.st[0][1] < 0) {
      final snake = data.rmSnake2.st;
      snake[0][1] = data.totalY - 2;
    }
    if (data.rmSnake2.st[0][1] > data.totalY - 1) {
      final snake = data.rmSnake2.st;
      snake[0][1] = 0;
    }
  }

  bool touchBodySnake2() {
    var z = false;
    for (var i = 1; i < data.rmSnake2.st.length; i++) {
      if (data.rmSnake.st[0][0] == data.rmSnake2.st[i][0] &&
          data.rmSnake.st[0][1] == data.rmSnake2.st[i][1]) {
        z = true;
      }
    }
    for (var i = 1; i < data.rmSnake.st.length; i++) {
      if (data.rmSnake2.st[0][0] == data.rmSnake.st[i][0] &&
          data.rmSnake2.st[0][1] == data.rmSnake.st[i][1]) {
        z = true;
      }
    }
    return z;
  }
}
