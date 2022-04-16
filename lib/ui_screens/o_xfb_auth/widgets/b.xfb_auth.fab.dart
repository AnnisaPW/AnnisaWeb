part of '_index.dart';

class XfbAuthFab extends ConsumerWidget {
  const XfbAuthFab({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvXfbAuthCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvXfbAuthCtrl = ref.watch(pvXfbAuthCtrl);

    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {},
    );
  }
}
