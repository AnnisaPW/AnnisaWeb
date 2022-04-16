part of '../_index.dart';

class HomeImageProfile extends StatelessWidget {
  const HomeImageProfile({Key? key}) : super(key: key);

  HomeCtrl get ct => homeCtrl;
  HomeData get dt => homeCtrl.data;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CircleAvatar(
        maxRadius: 60,
        backgroundImage: AssetImage(dt.imageProfile),
      ),
    );
  }
}
