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

    return Visibility(
      visible: sizeWidth >= 900,
      child: Positioned(
        right: sizeWidth <= 500 ? 5 : 50,
        bottom: 150,
        child: Image.asset(
          dt.imageLamp,
          scale: 2,
        ),
      ),
    );
  }
}
