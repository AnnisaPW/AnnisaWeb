part of '_index.dart';

class XloginBtnGoogle extends ConsumerWidget {
  const XloginBtnGoogle({Key? key}) : super(key: key);

  _signInViaGoogle(WidgetRef ref) => ref.read(ctXlogin.notifier).signInViaGoogle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Image.asset('assets/images/g-logo.png'),
            ),
            const Expanded(
              child: Center(
                child: Text('SIGN IN WITH GOOGLE'),
              ),
            )
          ],
        ),
        onPressed: () => _signInViaGoogle(ref),
      ),
    );
  }
}
