part of '_index.dart';

final battleSnakeCtrl = BattleSnakeCtrl();

class BattleSnakeCtrl {
  BattleSnakeData get dt => battleSnakeData.st;

  tappedCoordinat(int x, int y) {
    debugPrint('$x , $y');
    if (dt.rmArah.st == 'up' || dt.rmArah.st == 'down') {
      if (x < dt.rmSnake.st[0][0]) {
        dt.rmArah.st = 'left';
      } else if (x > dt.rmSnake.st[0][0]) {
        dt.rmArah.st = 'right';
      }
    } else {
      if (y < dt.rmSnake.st[0][1]) {
        dt.rmArah.st = 'up';
      } else if (y > dt.rmSnake.st[0][1]) {
        dt.rmArah.st = 'down';
      }
    }
  }

  reset() {
    dt.rmSnake.refresh();
    dt.rmPoint.refresh();
    dt.rmArah.refresh();
    dt.rmArahSnake2.refresh();
    dt.rmFoodX.refresh();
    dt.rmFoodY.refresh();
    dt.rmIsRunning.refresh();
    dt.rmIsPause.refresh();
    dt.rmSnake2.refresh();
  }

  List<int> randomFood() {
    var snakeString = dt.rmSnake.st.map((e) => e.toString());
    String str;
    int x;
    int y;

    do {
      x = Random().nextInt(dt.totalX);
      y = Random().nextInt(dt.totalY);
      str = '[$x, $y]';
      debugPrint(str);
    } while (snakeString.contains(str));

    dt.rmFoodX.st = x;
    dt.rmFoodY.st = y;
    return [x, y];
  }

  checkFood() {
    if (dt.rmSnake.st[0][0] == dt.rmFoodX.st &&
        dt.rmSnake.st[0][1] == dt.rmFoodY.st) {
      dt.rmFoodX.st = randomFood()[0];
      dt.rmFoodY.st = randomFood()[1];

      dt.rmPoint.st = dt.rmPoint.st + 1;
      dt.timerx.cancel();

      dt.rmInitDuration.st = (dt.rmInitDuration.st * 0.9).floor();
      start();
    } else {
      dt.rmSnake.st.removeLast();
    }
  }

  changeDirection(String direction) => dt.rmArah.st = direction;

  pause() => dt.rmIsPause.st = !dt.rmIsPause.st;

  stop() {
    dt.rmIsPause.st = false;
    dt.rmIsRunning.st = false;
  }

  play() {
    if (dt.rmIsPause.st) {
      // resume game
    } else {
      start();
    }
    dt.rmIsPause.st = false;
  }

  move() {
    if (dt.rmArah.st == 'up') {
      final x = [dt.rmSnake.st[0][0], dt.rmSnake.st[0][1] - 1];

      dt.rmSnake.st = [...dt.rmSnake.st]..insert(0, x);
    }

    if (dt.rmArah.st == 'down') {
      final x = [dt.rmSnake.st[0][0], dt.rmSnake.st[0][1] + 1];
      dt.rmSnake.st = [...dt.rmSnake.st]..insert(0, x);
    }

    if (dt.rmArah.st == 'left') {
      final x = [dt.rmSnake.st[0][0] - 1, dt.rmSnake.st[0][1]];
      dt.rmSnake.st = [...dt.rmSnake.st]..insert(0, x);
    }

    if (dt.rmArah.st == 'right') {
      final x = [dt.rmSnake.st[0][0] + 1, dt.rmSnake.st[0][1]];
      dt.rmSnake.st = [...dt.rmSnake.st]..insert(0, x);
    }

    debugPrint(dt.rmSnake2.st.toString());
  }

  start() {
    dt.rmIsRunning.st = true;
    Timer.periodic(
      Duration(milliseconds: dt.rmInitDuration.st),
      (timer) {
        if (dt.rmIsPause.st == false) {
          dt.timerx = timer;
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
    if (dt.rmSnake.st[0][0] < 0) {
      final snake = dt.rmSnake.st;
      snake[0][0] = dt.totalX - 2;
    }
    if (dt.rmSnake.st[0][0] > dt.totalX - 1) {
      final snake = dt.rmSnake.st;
      snake[0][0] = 0;
    }
    if (dt.rmSnake.st[0][1] < 0) {
      final snake = dt.rmSnake.st;
      snake[0][1] = dt.totalY - 2;
    }
    if (dt.rmSnake.st[0][1] > dt.totalY - 1) {
      final snake = dt.rmSnake.st;
      snake[0][1] = 0;
    }
  }

  updateIsFinish() {
    if (touchBody() || collisions() || touchBodySnake2()) {
      dt.rmIsRunning.st = false;
    }
  }

  checkIsFinish() {
    if (dt.rmIsRunning.st == false) {
      dt.timerx.cancel();
      Dialogs.gameOver('Your point is ${dt.rmPoint.st}');
    }
  }

  bool touchBody() {
    var z = false;
    final headX = dt.rmSnake.st[0][0];
    final headY = dt.rmSnake.st[0][1];
    for (var i = 1; i < dt.rmSnake.st.length; i++) {
      if (headX == dt.rmSnake.st[i][0] && headY == dt.rmSnake.st[i][1]) {
        z = true;
      }
    }
    return z;
  }

  bool collisions() =>
      dt.rmSnake.st[0][0] == dt.rmSnake2.st[0][0] &&
      dt.rmSnake.st[0][1] == dt.rmSnake2.st[0][1];

  //* ----- ----- ----- ----- ----- ----- ----- ----- -----

  start2() {
    dt.rmIsRunning.st = true;
    Timer.periodic(
      const Duration(milliseconds: 500),
      (timer2) {
        if (dt.rmIsPause.st == false) {
          move2();
          throughSnake2();
          gameOverSnake2(timer2);
          randomFood2();
        }
      },
    );
  }

  move2() {
    var snakeX = dt.rmSnake2.st[0][0];
    var snakeY = dt.rmSnake2.st[0][1];

    if (snakeX == dt.rmFoodX.st) {
      if (snakeY > dt.rmFoodY.st) {
        dt.rmArahSnake2.st = 'up';
      }
      if (snakeY < dt.rmFoodY.st) {
        dt.rmArahSnake2.st = 'down';
      }
    } else {
      if (snakeX > dt.rmFoodX.st) {
        dt.rmArahSnake2.st = 'left';
      }
      if (snakeX < dt.rmFoodX.st) {
        dt.rmArahSnake2.st = 'right';
      }
    }

    debugPrint(dt.rmArahSnake2.st);

    if (dt.rmArahSnake2.st == 'up') {
      final x = [dt.rmSnake2.st[0][0], dt.rmSnake2.st[0][1] - 1];
      dt.rmSnake2.st = [...dt.rmSnake2.st]..insert(0, x);
    }

    if (dt.rmArahSnake2.st == 'down') {
      final x = [dt.rmSnake2.st[0][0], dt.rmSnake2.st[0][1] + 1];
      dt.rmSnake2.st = [...dt.rmSnake2.st]..insert(0, x);
    }

    if (dt.rmArahSnake2.st == 'left') {
      final x = [dt.rmSnake2.st[0][0] - 1, dt.rmSnake2.st[0][1]];
      dt.rmSnake2.st = [...dt.rmSnake2.st]..insert(0, x);
    }

    if (dt.rmArahSnake2.st == 'right') {
      final x = [dt.rmSnake2.st[0][0] + 1, dt.rmSnake2.st[0][1]];
      dt.rmSnake2.st = [...dt.rmSnake2.st]..insert(0, x);
    }
  }

  randomFood2() {
    if (dt.rmSnake2.st[0][0] == dt.rmFoodX.st &&
        dt.rmSnake2.st[0][1] == dt.rmFoodY.st) {
      dt.rmFoodX.st = Random().nextInt(dt.totalX);
      dt.rmFoodY.st = Random().nextInt(dt.totalY);
    } else {
      dt.rmSnake2.st.removeLast();
    }
  }

  gameOverSnake2(Timer timer2) {
    if (touchBody() ||
        collisions() ||
        touchBodySnake2() ||
        !dt.rmIsRunning.st) {
      timer2.cancel();
    }
  }

  throughSnake2() {
    if (dt.rmSnake2.st[0][0] < 0) {
      final snake = dt.rmSnake2.st;
      snake[0][0] = dt.totalX - 2;
    }
    if (dt.rmSnake2.st[0][0] > dt.totalX - 1) {
      final snake = dt.rmSnake2.st;
      snake[0][0] = 0;
    }
    if (dt.rmSnake2.st[0][1] < 0) {
      final snake = dt.rmSnake2.st;
      snake[0][1] = dt.totalY - 2;
    }
    if (dt.rmSnake2.st[0][1] > dt.totalY - 1) {
      final snake = dt.rmSnake2.st;
      snake[0][1] = 0;
    }
  }

  bool touchBodySnake2() {
    var z = false;
    for (var i = 1; i < dt.rmSnake2.st.length; i++) {
      if (dt.rmSnake.st[0][0] == dt.rmSnake2.st[i][0] &&
          dt.rmSnake.st[0][1] == dt.rmSnake2.st[i][1]) {
        z = true;
      }
    }
    for (var i = 1; i < dt.rmSnake.st.length; i++) {
      if (dt.rmSnake2.st[0][0] == dt.rmSnake.st[i][0] &&
          dt.rmSnake2.st[0][1] == dt.rmSnake.st[i][1]) {
        z = true;
      }
    }
    return z;
  }
}
