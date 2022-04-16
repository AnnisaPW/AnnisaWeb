part of '../_index.dart';

class HomeSnakeImage extends StatelessWidget {
  const HomeSnakeImage({
    Key? key,
  }) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeCtrl.data;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return OnAnimationBuilder(
      listenTo: dt.animation1,
      builder: (animate) {
        final heightx = animate.fromTween(
          (currentValue) => 50.0.tweenTo(25.0),
          'heightx',
        );

        return Visibility(
          visible: sizeWidth >= 900,
          child: Positioned(
            right: sizeWidth <= 500 ? 5 : 50,
            bottom: 260,
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 200,
                          child: Image.asset(dt.imageSnakeAladdin),
                        ),
                      ],
                    ),
                    const SizedBox(width: 250),
                  ],
                ),
                SizedBox(height: heightx),
              ],
            ),
          ),
        );
      },
    );
  }
}
