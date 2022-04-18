part of '_index.dart';

final homeSnakeCtrl = HomeSnakeCtrl();

class HomeSnakeCtrl {
  // final data = HomeSnakeData();
  HomeSnakeData get dt => homeSnakeData.st;

  action() => dt.animation1.triggerAnimation();
}
