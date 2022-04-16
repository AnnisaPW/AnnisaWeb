part of '_index.dart';

class ZHomeImage extends ConsumerWidget {
  const ZHomeImage({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvZHomeCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvZHomeCtrl = ref.watch(pvZHomeCtrl);

    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        // effect frame
        border: Border.all(
          width: 1,
          color: Colors.grey.withOpacity(0.2),
        ),
      ),
      child: Container(
        width: 100,
        height: 150,
        color: Colors.blue,
      ),
    );
  }
}
