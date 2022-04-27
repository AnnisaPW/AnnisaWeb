part of '../_index.dart';

class HomeSnakeAnimate extends StatelessWidget {
  const HomeSnakeAnimate({
    Key? key,
  }) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 125,
          height: 275,
          // color: Colors.blue,
          child: OnAnimationBuilder(
            listenTo: dt.animation1,
            builder: (animate) {
              final heightX = animate.fromTween(
                (currentValue) => 50.0.tweenTo(25.0),
                'heightX',
              );
              return Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                verticalDirection: VerticalDirection.up,
                children: [
                  SizedBox(
                    width: 125,
                    height: heightX,
                    // color: Colors.amber,
                  ),
                  SizedBox(
                    width: 125,
                    height: 225,
                    // color: Colors.pink,
                    child: Image.asset(dt.imageSnakewithClouds),
                  ),
                ],
              );
            },
          ),
        ),
        OnAnimationBuilder(
          listenTo: dt.animation2,
          builder: (animate) {
            final widthX = animate.fromTween(
              (currentValue) => 3.0.tweenTo(sizeWidth - 150),
              'widthX',
            );

            return SizedBox(
              // width: 150,
              width: widthX,
              height: 250,
              // margin: EdgeInsets.only(top: 5),
              // color: Colors.green,
            );
          },
        ),
      ],
    );
  }
}
