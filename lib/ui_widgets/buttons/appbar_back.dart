part of '_index.dart';

class ButtonAppbarBack extends StatelessWidget {
  const ButtonAppbarBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Get.theme.platform == TargetPlatform.android) {
      return ButtonAppbarX(
        iconDatax: Icons.arrow_back,
        iconSizex: 25,
        funcx: () => Get.back(),
      );
    }
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ButtonAppbarX(
        iconDatax: CupertinoIcons.back,
        iconSizex: 30,
        funcx: () => Get.back(),
      ),
    );
  }
}
