part of '../_index.dart';

class HomeSnakeBtnPlay extends StatelessWidget {
  const HomeSnakeBtnPlay({Key? key}) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 500,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Play',
              textScaleFactor: 2,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                HomeSnakeBtnSingle(),
                HomeSnakeBtnBattle(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
