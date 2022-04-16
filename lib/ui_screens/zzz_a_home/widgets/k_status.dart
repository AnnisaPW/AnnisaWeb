part of '_index.dart';

class ZHomeStatus extends ConsumerWidget {
  const ZHomeStatus({Key? key}) : super(key: key);

  // _action(WidgetRef ref) => ref.read(pvZHomeCtrl.notifier).action();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final _pvZHomeCtrl = ref.watch(pvZHomeCtrl);

    return Opacity(
      opacity: 0.8,
      child: SizedBox(
        width: double.infinity,
        height: 40,
        child: Column(
          children: [
            Row(
              children: const [
                Text('Newbie Programmer'),
              ],
            ),
            Row(
              children: const [
                Text('From Indonesia.'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
