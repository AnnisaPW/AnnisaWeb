part of '../_index.dart';

class HomeBtnSnakeGame extends StatelessWidget {
  const HomeBtnSnakeGame({Key? key}) : super(key: key);

  HomeCtrl get ct => homeCtrl;
  HomeData get dt => homeData.st;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: const Text('Click me'),
      onPressed: () => nav.to(Routes.homeSnake),
    );
  }
}
