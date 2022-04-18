part of '_index.dart';

final homeData = RM.inject<HomeData>(
  () => HomeData(),
  debugPrintWhenNotifiedPreMessage: 'HomeSnakeData',
  // sideEffects: SideEffects(
  //   initState: () => battleSnakeCtrl.init(),
  // ),
);

class HomeData {
  final title = 'Home';

  final String name = 'Annisa Putri Wahyuni';

  final String greet = 'Hello';

  final String biodata = '18th | student | scout';

  final String quotes = '"vini vidi vici"';

  final String quotesInd = 'saya datang, saya melihat, saya menaklukkan.';

  final String imageMandala = './assets/images/mandala.jpg';

  final String flutterBackdrop = './assets/images/flutterlogo.png';

  final String imageBackdrop = './assets/images/xprofile.jpg';

  final String imageProfile = './assets/images/profile.jpg';
}
