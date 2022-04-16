part of '_index.dart';

class ZHomeView extends ConsumerWidget {
  const ZHomeView({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvZHomeCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvZHomeCtrl = ref.watch(pvZHomeCtrl);

    return Scaffold(
      backgroundColor: Colors.black,
      drawer: const ZHomeDrawer(),
      body: Stack(
        children: [
          const ZHomeBackDrop(),
          Text('${MediaQuery.of(context).size.width},${MediaQuery.of(context).size.height}'),
          const ZHomeBody()
        ],
      ),
    );
  }
}
