part of '../_index.dart';

class BattleSnakeLayoutBuilder extends StatelessWidget {
  const BattleSnakeLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth <= 520) {
          return SingleChildScrollView(
            child: Column(
              children: const [
                BattleSnakeBody(),
                BattleSnakeImagePotrait(),
              ],
            ),
          );
        }
        return const BattleSnakeBody();
      },
    );
  }
}
