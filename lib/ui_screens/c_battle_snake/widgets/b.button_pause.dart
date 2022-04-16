part of '../_index.dart';

class BattleSnakeBtnPause extends StatelessWidget {
  const BattleSnakeBtnPause({Key? key}) : super(key: key);

  BattleSnakeCtrl get ct => battleSnakeCtrl;
  BattleSnakeData get dt => battleSnakeCtrl.data;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Visibility(
        visible: dt.rmIsRunning.st,
        child: IconButton(
          icon: Icon(
            Icons.pause,
            color: dt.rmIsPause.st ? Colors.green : Colors.orange,
          ),
          onPressed: !dt.rmIsRunning.st ? null : () => ct.pause(),
        ),
      ),
    );
  }
}
