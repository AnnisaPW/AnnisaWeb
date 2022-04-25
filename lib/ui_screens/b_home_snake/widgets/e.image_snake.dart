part of '../_index.dart';

class HomeSnakeImageWithClouds extends StatelessWidget {
  const HomeSnakeImageWithClouds({
    Key? key,
  }) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;

    return OnAnimationBuilder(
      listenTo: dt.animation1,
      builder: (animate) {
        final heightx = animate.fromTween(
          (currentValue) => 50.0.tweenTo(25.0),
          'heightx',
        );

        return Visibility(
          visible: sizeWidth > 1200,
          child: Positioned(
            right: 260,
            // bottom: 190,
            bottom: sizeWidth < 1300 || sizeHeight < 850
                ? 190 - 60
                : sizeWidth < 1350 || sizeHeight < 900
                    ? 190 - 40
                    : sizeWidth < 1500 || sizeHeight < 970
                        ? 190 - 20
                        : 190,
            child: Column(
              children: [
                SizedBox(
                  // width: 250,
                  // height: 400,
                  width: sizeWidth < 1300 || sizeHeight < 850
                      ? 250 - 90
                      : sizeWidth < 1350 || sizeHeight < 900
                          ? 250 - 70
                          : sizeWidth < 1500 || sizeHeight < 970
                              ? 250 - 50
                              : 250,
                  height: sizeWidth < 1300 || sizeHeight < 850
                      ? 400 - 90
                      : sizeWidth < 1350 || sizeHeight < 900
                          ? 400 - 70
                          : sizeWidth < 1500 || sizeHeight < 970
                              ? 400 - 50
                              : 400,
                  // color: Colors.amber,
                  child: Image.asset(dt.imageSnakewithClouds),
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
