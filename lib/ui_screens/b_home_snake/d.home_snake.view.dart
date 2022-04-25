part of '_index.dart';

class HomeSnakeView extends StatelessWidget {
  const HomeSnakeView({Key? key}) : super(key: key);

  HomeSnakeCtrl get ct => homeSnakeCtrl;
  HomeSnakeData get dt => homeSnakeData.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomeSnakeAppbar(),
      ),
      body: Stack(
        children: [
          const HomeSnakeAppleImage(),
          Positioned(
            right: 50,
            bottom: 150,
            child: SizedBox(
              width: sizeWidth / 3,
              height: sizeHeight - 300,
              // color: Colors.yellow,

              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Visibility(
                  visible: sizeHeight >= 790,
                  child: SizedBox(
                    child: Stack(
                      children: const [
                        HomeSnakeLampImage(),
                        HomeSnakeImageWithClouds(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // HomeSnakeLampImage(),
          // HomeSnakeImageClouds(),
          // HomeSnakeImage(),
          const HomeSnakeBtnPlay(),
        ],
      ),
    );
  }
}
