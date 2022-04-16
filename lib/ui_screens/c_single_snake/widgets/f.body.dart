part of '../_index.dart';

class SingleSnakeBody extends StatelessWidget {
  const SingleSnakeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Flexible(
              child: SingleSnakeBackground(),
            ),
          ],
        ),
        const SingleSnakeImageLandscape(),
      ],
    );
  }
}
