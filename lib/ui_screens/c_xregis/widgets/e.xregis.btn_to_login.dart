part of '_index.dart';

class XregisBtnToLogin extends ConsumerWidget {
  const XregisBtnToLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 200,
      height: 40,
      child: TextButton(
        child: const Text('already registered?'),
        onPressed: () => Get.offNamed(Routes.xlogin),
      ),
    );
  }
}
