part of '../_index.dart';

class BattleSnakeAppbar extends StatelessWidget {
  const BattleSnakeAppbar({Key? key}) : super(key: key);

  BattleSnakeCtrl get ct => battleSnakeCtrl;
  BattleSnakeData get dt => battleSnakeData.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(dt.title),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => nav.back(),
      ),
      actions: [
        Row(
          children: const [
            BattleSnakeBtnPause(),
            SizedBox(width: 5),
            BattleSnakeBtnStart(),
            SizedBox(width: 5),
          ],
        )
      ],
    );
  }
}
