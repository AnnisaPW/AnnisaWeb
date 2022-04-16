part of '_index.dart';

class HomeSnakeView extends StatelessWidget {
  const HomeSnakeView({Key? key}) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeCtrl.data;

  @override
  Widget build(BuildContext context) {
    // final sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // floatingActionButton: const HomeSnakeFab(),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomeSnakeAppbar(),
      ),
      body: Stack(
        children: const [
          HomeSnakeAppleImage(),
          HomeSnakeLampImage(),
          HomeSnakeImageClouds(),
          HomeSnakeImage(),
          HomeSnakeBtnPlay(),
        ],
      ),
    );
  }
}
