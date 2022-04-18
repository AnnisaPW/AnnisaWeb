part of '../_index.dart';

class HomeSnakeImageClouds extends StatelessWidget {
  const HomeSnakeImageClouds({Key? key}) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return OnAnimationBuilder(
      listenTo: dt.animation1,
      builder: (animate) {
        final heightx = animate.fromTween(
          (currentValue) => Tween(begin: 20.0, end: 10.0),
          'heightx',
        );
        return Visibility(
          visible: sizeWidth >= 900,
          child: Positioned(
            right: 300,
            bottom: 260,
            child: Column(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(dt.imageClouds),
                ),
                SizedBox(
                  height: heightx,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
