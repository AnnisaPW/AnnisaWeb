part of '_index.dart';

final x1SnakeCtrl = SnakeCtrl();

class SnakeCtrl {
  SnakeCtrl() {
    initGrid();
    randFood();
    setSnake();
    setFood();
  }

  // final _data = RM.inject<SnakeData>(() => SnakeData());
  // SnakeData get data => _data.st;
  // set data(SnakeData val) => _data.st = val;

  final data = SnakeData();

  initGrid() {
    data.listx = List.generate(
      data.width,
      (i) => List.generate(
        data.width,
        (j) => null.inj<int?>(),
      ),
    );
  }

  cleanGrid() {
    for (var x in data.listx) {
      for (var y in x) {
        y.st = null;
      }
    }
  }

  setFood() {
    data.listx[data.food.st[0]][data.food.st[1]].st = 0;
  }

  setSnake() {
    for (var i in data.snake) {
      data.listx[i[0]][i[1]].st = 1;
    }
  }

  bool isEat(List<int> head) {
    return head[0] == data.food.st[0] && head[1] == data.food.st[1];
  }

  randFood() {
    int x, y;
    do {
      x = Random().nextInt(data.width);
      y = Random().nextInt(data.width);
    } while ([x, y] == data.snake[0]);
    data.food.st = [x, y];
  }

  moveSnake(String direction) {
    data.snake = setNewSnake(direction);
    cleanGrid();
    if (isEat(data.snake[0])) randFood();
    setSnake();
    setFood();
  }

  List<List<int>> setNewSnake(String direction) {
    List<List<int>> newSnake = [setNewHead(direction), ...data.snake];
    if (!isEat(newSnake[0])) newSnake.removeLast();
    return newSnake;
  }

  List<int> setNewHead(String direction) {
    List<int> newHead = [];
    switch (direction) {
      case 'D':
        newHead = goD(data.snake[0]);
        break;
      case 'U':
        newHead = goU(data.snake[0]);
        break;
      case 'L':
        newHead = goL(data.snake[0]);
        break;
      case 'R':
        newHead = goR(data.snake[0]);
        break;
    }
    return newHead;
  }

  List<int> goR(List<int> e) => [add(e[0]), e[1]];
  List<int> goL(List<int> e) => [min(e[0]), e[1]];
  List<int> goU(List<int> e) => [e[0], min(e[1])];
  List<int> goD(List<int> e) => [e[0], add(e[1])];

  int add(int val) => val == (data.width - 1) ? (0) : (val + 1);
  int min(int val) => val == (0) ? (data.width - 1) : (val - 1);
}
