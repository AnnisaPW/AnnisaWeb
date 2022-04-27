part of '_index.dart';

class HomeSnakeView extends StatelessWidget {
  const HomeSnakeView({Key? key}) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomeSnakeAppbar(),
      ),
      body: Stack(
        children: const [
          HomeSnakeAppleImage(),
          HomeSnakeTitle(),
          HomeSnakeWithLamp(),
          HomeSnakeAnimatedUp(),
          HomeSnakeBtnPlay(),
        ],
      ),
    );
  }
}
