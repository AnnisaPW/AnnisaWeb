part of '../_index.dart';

class HomeSnakeAnimatedText extends StatelessWidget {
  const HomeSnakeAnimatedText({
    Key? key,
  }) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return OnAnimationBuilder(
      listenTo: dt.animation2,
      builder: (animate) {
        final widthX = animate.fromTween(
          (currentValue) => 3.0.tweenTo(sizeWidth - 150),
          'widthX',
        );
        return SizedBox(
          // width: 150,
          width: widthX,
          height: 100,
          child: const Text(
            'SNAKE GAME',
            style: TextStyle(
              letterSpacing: 5,
              fontWeight: FontWeight.bold,
            ),
            textScaleFactor: 5,
          ),
        );
      },
    );
  }
}
