part of '../_index.dart';

class BattleSnakeBtnStart extends StatelessWidget {
  const BattleSnakeBtnStart({Key? key}) : super(key: key);

  BattleSnakeCtrl get ct => battleSnakeCtrl;
  BattleSnakeData get dt => battleSnakeData.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => IconButton(
        icon: Icon(
          !dt.rmIsRunning.st ? Icons.play_arrow : Icons.stop,
          color: !dt.rmIsRunning.st ? Colors.green : Colors.red,
        ),
        onPressed: () {
          if (!dt.rmIsRunning.st) {
            ct.start();
            ct.start2();
          } else {
            ct.stop();
          }
        },
      ),
    );
  }
}
