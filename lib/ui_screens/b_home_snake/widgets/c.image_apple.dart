part of '../_index.dart';

class HomeSnakeAppleImage extends StatelessWidget {
  const HomeSnakeAppleImage({
    Key? key,
  }) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeCtrl.dt;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Image.asset(dt.imageApple),
      ),
    );
  }
}
