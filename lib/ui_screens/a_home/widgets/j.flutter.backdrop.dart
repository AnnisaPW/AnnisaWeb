part of '../_index.dart';

class HomeFlutterBackdrop extends StatelessWidget {
  const HomeFlutterBackdrop({Key? key}) : super(key: key);

  HomeCtrl get ct => homeCtrl;
  HomeData get dt => homeData.st;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: sizeWidth >= 1300 ? 500 : 400,
      height: sizeWidth >= 1300 ? 500 : 400,
      child: Image.asset(dt.flutterBackdrop),
    );
  }
}
