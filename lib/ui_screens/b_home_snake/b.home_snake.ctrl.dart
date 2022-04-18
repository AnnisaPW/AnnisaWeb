part of '_index.dart';

final homeSnakeCtrl = HomeSnakeCtrl();

class HomeSnakeCtrl {
  HomeSnakeData get dt => homeSnakeData.st;

  action() => dt.animation1.triggerAnimation();
}
