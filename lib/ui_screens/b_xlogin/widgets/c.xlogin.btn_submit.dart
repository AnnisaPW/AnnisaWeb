part of '_index.dart';

class XloginBtnSubmit extends ConsumerWidget {
  const XloginBtnSubmit({Key? key}) : super(key: key);

  _signInViaEmail(WidgetRef ref) => ref.read(ctXlogin.notifier).signInViaEmail();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: OutlinedButton(
        child: const Text('SIGN IN'),
        onPressed: () => _signInViaEmail(ref),
      ),
    );
  }
}
