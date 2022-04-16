part of '_index.dart';

class XloginBtnToRegis extends ConsumerWidget {
  const XloginBtnToRegis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 200,
      height: 40,
      child: TextButton(
        child: const Text('don\'t have any account?'),
        onPressed: () => Get.offNamed(Routes.xregis),
      ),
    );
  }
}
