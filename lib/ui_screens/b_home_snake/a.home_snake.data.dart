part of '_index.dart';

class HomeSnakeData {
  final String title = 'Home Snake';

  final String imageSnakeAladdin = './assets/images/snakeAladdin.png';

  final String imageApple = './assets/images/apple2.png';

  final String imageLamp = './assets/images/lamp.png';

  final String imageClouds = './assets/images/clouds.png';

  final String imageTurban = './assets/images/turban.png';

  final animation1 = RM.injectAnimation(
    duration: 1.seconds,
    curve: Curves.linear,
    reverseCurve: Curves.linear,
    repeats: 0,
    shouldReverseRepeats: true,
    shouldAutoStart: true,
  );
}
