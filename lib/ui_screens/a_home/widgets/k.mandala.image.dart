part of '../_index.dart';

class HomeMandalaImage extends StatelessWidget {
  const HomeMandalaImage({Key? key}) : super(key: key);

  HomeCtrl get ct => homeCtrl;
  HomeData get dt => homeCtrl.data;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.3,
      child: CircleAvatar(
        maxRadius: 100,
        backgroundImage: AssetImage(dt.imageMandala),
      ),
    );
  }
}
