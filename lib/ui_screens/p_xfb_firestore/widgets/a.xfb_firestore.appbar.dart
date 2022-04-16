part of '_index.dart';

class XfbFirestoreAppbar extends ConsumerWidget {
  const XfbFirestoreAppbar({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvXfbFirestoreCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _pvXfbFirestoreCtrl = ref.watch(pvXfbFirestoreCtrl);

    return AppBar(
      title: Text(_pvXfbFirestoreCtrl.title),
    );
  }
}
