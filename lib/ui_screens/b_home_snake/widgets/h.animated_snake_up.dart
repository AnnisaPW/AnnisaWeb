part of '../_index.dart';

class HomeSnakeAnimatedUp extends StatelessWidget {
  const HomeSnakeAnimatedUp({
    Key? key,
  }) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return Visibility(
      visible: sizeWidth < 1200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 125,
            height: 275,
            child: OnAnimationBuilder(
              listenTo: dt.animation1,
              builder: (animate) {
                final heightX = animate.fromTween(
                  (currentValue) => 50.0.tweenTo(25.0),
                  'heightX',
                );
                return Column(
                  verticalDirection: VerticalDirection.up,
                  children: [
                    SizedBox(
                      width: 125,
                      height: heightX,
                    ),
                    SizedBox(
                      width: 125,
                      height: 225,
                      child: Image.asset(dt.imageSnakewithClouds),
                    ),
                  ],
                );
              },
            ),
          ),
          const HomeSnakeAnimatedText(),
        ],
      ),
    );
  }
}
