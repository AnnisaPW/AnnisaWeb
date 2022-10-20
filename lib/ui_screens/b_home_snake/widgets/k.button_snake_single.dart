part of '../_index.dart';

class HomeSnakeBtnSingle extends StatelessWidget {
  const HomeSnakeBtnSingle({
    Key? key,
  }) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow.shade100,
      ),
      child: const Text(
        'Single',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      onPressed: () => nav.to(Routes.singleSnake),
    );
  }
}
