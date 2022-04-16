part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: const [
              SizedBox(
                width: 500,
                child: Center(child: HomeBackdrop()),
              ),
            ],
          ),
          Positioned(
            right: -100,
            bottom: -100,
            child: Visibility(
              visible: MediaQuery.of(context).size.width <= 1000 ? false : true,
              child: const HomeFlutterBackdrop(),
            ),
          ),
          const HomeGradient(),
          // HomeLandscape(),
          const HomeBody()
        ],
      ),
    );
  }
}
