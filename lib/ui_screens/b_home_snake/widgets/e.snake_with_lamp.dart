part of '../_index.dart';

class HomeSnakeWithLamp extends StatelessWidget {
  const HomeSnakeWithLamp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;

    return Visibility(
      visible: sizeWidth > 790,
      child: Positioned(
        right: 50,
        bottom: 5,
        child: SizedBox(
          width: sizeWidth / 3,
          height: sizeHeight - 300,
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: SizedBox(
              child: Stack(
                children: const [
                  HomeSnakeLampImage(),
                  HomeSnakeAnimatedSide(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
