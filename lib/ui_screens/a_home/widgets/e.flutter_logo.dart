part of '../_index.dart';

class HomeFlutterLogo extends StatelessWidget {
  const HomeFlutterLogo({Key? key}) : super(key: key);

  HomeCtrl get ct => homeCtrl;
  HomeData get dt => homeData.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return Visibility(
      visible: sizeWidth <= 1000,
      child: Column(
        children: [
          const Text('Powered by :'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FlutterLogo(),
              Text('Flutter'),
            ],
          ),
        ],
      ),
    );
  }
}
