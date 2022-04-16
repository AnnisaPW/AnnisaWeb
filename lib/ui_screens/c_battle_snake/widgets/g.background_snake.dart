part of '../_index.dart';

class BattleSnakeBackground extends StatelessWidget {
  const BattleSnakeBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: 700),
          color: Colors.black.withOpacity(0.8),
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              width: double.infinity,
              color: Colors.grey.withOpacity(0.9),
              margin: const EdgeInsets.all(10),
              child: const BattleSnakeItemGridView(),
            ),
          ),
        ),
        const BattleSnakePoint()
      ],
    );
  }
}
