part of '../_index.dart';

class SingleSnakeAppbar extends StatelessWidget {
  const SingleSnakeAppbar({Key? key}) : super(key: key);

  SingleSnakeCtrl get ct => singleSnakeCtrl;
  SingleSnakeData get dt => singleSnakeCtrl.data;

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
      actions: [
        Row(
          children: const [
            SingleSnakeBtnPause(),
            SizedBox(width: 5),
            SingleSnakeBtnStart(),
            SizedBox(width: 5),
          ],
        )
      ],
    );
  }
}
