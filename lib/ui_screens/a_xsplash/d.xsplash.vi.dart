part of '_index.dart';

class XsplashView extends ConsumerWidget {
  const XsplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _pvSettings = ref.watch(pvSettingsSv);

    return Scaffold(
      backgroundColor: _pvSettings.isDark ? CnColor.backgroundDark : CnColor.backgroundLight,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            XsplashLogo(),
            SizedBoxH(10),
            XsplashText(),
          ],
        ),
      ),
    );
  }
}
