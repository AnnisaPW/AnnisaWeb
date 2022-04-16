part of '_index.dart';

final homeSnakeCtrl = HomeSnakeCtrl();

class HomeSnakeCtrl {
  final data = HomeSnakeData();
  init() {}

  action() => data.animation1.triggerAnimation();
}
