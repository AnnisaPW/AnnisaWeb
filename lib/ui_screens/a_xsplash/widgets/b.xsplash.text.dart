part of '_index.dart';

class XsplashText extends ConsumerWidget {
  const XsplashText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ctXsplash = ref.watch(ctXsplash);
    final _pvSettings = ref.watch(pvSettingsSv);

    return Text(
      _ctXsplash.strLoading,
      style: TextStyle(
        color: _pvSettings.isDark ? CnColor.textLight : CnColor.textDark,
      ),
    );
  }
}
