part of '_index.dart';

class XfbFirestoreFab extends ConsumerWidget {
  const XfbFirestoreFab({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvXfbFirestoreCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvXfbFirestoreCtrl = ref.watch(pvXfbFirestoreCtrl);

    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
