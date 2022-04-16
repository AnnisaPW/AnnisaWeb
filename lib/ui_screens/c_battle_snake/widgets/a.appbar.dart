part of '../_index.dart';

class BattleSnakeAppbar extends StatelessWidget {
  const BattleSnakeAppbar({Key? key}) : super(key: key);

  BattleSnakeCtrl get ct => battleSnakeCtrl;
  BattleSnakeData get dt => battleSnakeCtrl.data;

  @override
  Widget build(BuildContext context) {
    // final sizeWidth = MediaQuery.of(context).size.width;
    // final sizeHeight = MediaQuery.of(context).size.height;

    return AppBar(
      title: Text(dt.title),
      // leading: Text('${sizeWidth} ,${sizeHeight}'),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => RM.navigate.back(),
      ),
      // leading: Text(dt.rmArah.st),
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
