part of '_index.dart';

class XfbAuthAppbar extends ConsumerWidget {
  const XfbAuthAppbar({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvXfbAuthCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _pvXfbAuthCtrl = ref.watch(pvXfbAuthCtrl);

    return AppBar(
      title: Text(_pvXfbAuthCtrl.title),
    );
  }
}
