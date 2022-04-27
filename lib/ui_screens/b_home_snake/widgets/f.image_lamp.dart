part of '../_index.dart';

class HomeSnakeLampImage extends StatelessWidget {
  const HomeSnakeLampImage({
    Key? key,
  }) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;

    return Visibility(
      visible: sizeWidth >= 1200,
      child: Positioned(
        right: 10,
        bottom: 10,
        child: SizedBox(
          width: sizeWidth < 1300 || sizeHeight < 850
              ? 400 - 90
              : sizeWidth < 1350 || sizeHeight < 900
                  ? 400 - 70
                  : sizeWidth < 1500 || sizeHeight < 970
                      ? 400 - 50
                      : 400,
          height: sizeWidth < 1300 || sizeHeight < 850
              ? 300 - 90
              : sizeWidth < 1350 || sizeHeight < 900
                  ? 300 - 70
                  : sizeHeight < 970 || sizeWidth < 1500
                      ? 300 - 50
                      : 300,
          // color: Colors.blue,
          child: Image.asset(dt.imageLamp),
        ),
      ),
    );
  }
}
