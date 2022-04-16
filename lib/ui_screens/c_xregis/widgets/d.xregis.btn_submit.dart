part of '_index.dart';

class XregisBtnSubmit extends ConsumerWidget {
  const XregisBtnSubmit({Key? key}) : super(key: key);

  _register(WidgetRef ref) => ref.read(ctXregis.notifier).register();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: OutlinedButton(
        child: const Text('REGISTER'),
        onPressed: () => _register(ref),
      ),
    );
  }
}
