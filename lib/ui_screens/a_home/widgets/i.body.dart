part of '../_index.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  HomeCtrl get ct => homeCtrl;
  HomeData get dt => homeData.st;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 600),
                margin: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 100),
                    const HomeBiodata(),
                    const SizedBox(height: 10),
                    const HomeBtnSnakeGame(),
                    const HomeBtnPuzzleGame(),
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        HomeQuotes(),
                        HomeImageProfile(),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const HomeFlutterLogo(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
