part of '_index.dart';

class XfbFirestoreC extends ConsumerWidget {
  const XfbFirestoreC({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvXfbFirestoreCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvXfbFirestoreCtrl = ref.watch(pvXfbFirestoreCtrl);

    return Row(
      children: const [
        Expanded(
          child: Center(
            child: Text('future'),
          ),
        ),
        Expanded(
          child: Center(
            child: Text('stream'),
          ),
        ),
      ],
    );
  }
}
