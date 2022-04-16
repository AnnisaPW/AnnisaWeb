part of '_index.dart';

class XsplashLogo extends ConsumerWidget {
  const XsplashLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _ctXsplash = ref.watch(ctXsplash);

    return SizedBox(
      width: 200,
      height: 200,
      child: Image.asset(_ctXsplash.pathImage),
    );
  }
}
