part of '../_index.dart';

class HomeBackdrop extends StatelessWidget {
  const HomeBackdrop({Key? key}) : super(key: key);

  HomeCtrl get ct => homeCtrl;
  HomeData get dt => homeData.st;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.3,
      child: Image.asset(
        dt.imageBackdrop,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
