part of '../_index.dart';

class BattleSnakeBody extends StatelessWidget {
  const BattleSnakeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Flexible(
              child: BattleSnakeBackground(),
            ),
          ],
        ),
        const BattleSnakeImageLandscape(),
      ],
    );
  }
}
