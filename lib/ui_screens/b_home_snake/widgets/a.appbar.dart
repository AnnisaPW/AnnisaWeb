part of '../_index.dart';

class HomeSnakeAppbar extends StatelessWidget {
  const HomeSnakeAppbar({Key? key}) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeCtrl.data;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(dt.title),
    );
  }
}
