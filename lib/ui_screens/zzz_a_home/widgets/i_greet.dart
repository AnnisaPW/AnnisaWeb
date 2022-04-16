part of '_index.dart';

class ZHomeGreet extends ConsumerWidget {
  const ZHomeGreet({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvZHomeCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvZHomeCtrl = ref.watch(pvZHomeCtrl);

    return const Opacity(
      opacity: 0.8,
      child: SizedBox(
        width: double.infinity,
        height: 20,
        child: Text('Hello,'),
      ),
    );
  }
}
