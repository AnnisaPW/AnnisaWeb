part of '../_index.dart';

class HomeBtnPuzzleGame extends StatelessWidget {
  const HomeBtnPuzzleGame({Key? key}) : super(key: key);

  HomeCtrl get ct => homeCtrl;
  HomeData get dt => homeData.st;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: const Text('Puzzle Game'),
      onPressed: () => nav.to(Routes.puzzleGame),
    );
  }
}
