part of '_index.dart';

final homeSnakeData = RM.inject<HomeSnakeData>(
  () => HomeSnakeData(),
  debugPrintWhenNotifiedPreMessage: 'HomeSnakeData',
  // sideEffects: SideEffects(
  //   initState: () => battleSnakeCtrl.init(),
  // ),
);

class HomeSnakeData {
  final String title = 'Home Snake';

  final String imageSnakeAladdin = './assets/images/snakeAladdin.png';

  final String imageAppleX = './assets/images/applex.png';

  final String imageAppleY = './assets/images/appley.png';

  final String imageLamp = './assets/images/lamp.png';

  final String imageTurban = './assets/images/turban.png';

  final String imageSnakewithClouds = './assets/images/snakewithClouds.png';

  final animation1 = RM.injectAnimation(
    duration: 1.seconds,
    curve: Curves.linear,
    reverseCurve: Curves.linear,
    repeats: 0,
    shouldReverseRepeats: true,
    shouldAutoStart: true,
  );
}
