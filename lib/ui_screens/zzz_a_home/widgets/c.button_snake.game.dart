part of '_index.dart';

class ZHomeButtonSnakeGame extends ConsumerWidget {
  const ZHomeButtonSnakeGame({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvZHomeCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvZHomeCtrl = ref.watch(pvZHomeCtrl);

    return OutlinedButton(
      child: const Text('Snake Game'),
      onPressed: () => Get.toNamed(Routes.homeSnake),
    );
  }
}
