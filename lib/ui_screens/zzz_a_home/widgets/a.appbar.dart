part of '_index.dart';

class ZHomeAppbar extends ConsumerWidget {
  const ZHomeAppbar({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvZHomeCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _pvZHomeCtrl = ref.watch(pvZHomeCtrl);

    return AppBar(
      title: Text(_pvZHomeCtrl.title),
    );
  }
}
