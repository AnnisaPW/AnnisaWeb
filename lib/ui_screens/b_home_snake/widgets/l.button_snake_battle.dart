part of '../_index.dart';

class HomeSnakeBtnBattle extends StatelessWidget {
  const HomeSnakeBtnBattle({
    Key? key,
  }) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.yellow.shade100),
      child: const Text(
        'Battle',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      onPressed: () => nav.to(Routes.battleSnake),
    );
  }
}
