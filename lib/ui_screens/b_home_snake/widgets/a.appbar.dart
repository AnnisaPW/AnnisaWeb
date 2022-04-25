part of '../_index.dart';

class HomeSnakeAppbar extends StatelessWidget {
  const HomeSnakeAppbar({Key? key}) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    // final sizeWidth = MediaQuery.of(context).size.width;
    // final sizeHeight = MediaQuery.of(context).size.height;
    return AppBar(
      title: Text(dt.title),
      // leading: Text('$sizeWidth, $sizeHeight'),
    );
  }
}
