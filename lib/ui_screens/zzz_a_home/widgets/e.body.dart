part of '_index.dart';

class ZHomeBody extends ConsumerWidget {
  const ZHomeBody({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvZHomeCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvZHomeCtrl = ref.watch(pvZHomeCtrl);

    return SizedBox(
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ],
          ),
          const SizedBox(height: 100),
          const ZHomeProfile(),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.yellow,
            child: const Text('This is my first website'),
          )
        ],
      ),
    );
  }
}
